import {
  Box,
  Text,
  Heading,
  HStack,
  Switch,
  useBoolean,
  Stack,
} from "@chakra-ui/react";
import { HeatmapLayer, HexagonLayer } from "@deck.gl/aggregation-layers";
import { GeoJsonLayer, IconLayer } from "@deck.gl/layers";
import DeckGL from "@deck.gl/react";
import { useMemo, useState } from "react";
import StaticMap, { NavigationControl } from "react-map-gl";
import turf from "turf";
import { Sidebar } from "../components/Sidebar";
import circle from "@turf/circle"



// Viewport settings
const INITIAL_VIEW_STATE = {
  longitude: -0.118092,
  latitude: 51.509865,
  zoom: 10,
  pitch: 0,
  bearing: 10,
};
export interface Store {
  storeNumber: string;
  countryCode: string;
  ownershipTypeCode: string;
  schedule: string;
  slug: string;
  latitude: number;
  longitude: number;
  streetAddressLine1: string;
  streetAddressLine2: string;
  streetAddressLine3: string;
  city: string;
  countrySubdivisionCode: number;
  postalCode: string;
  currentTimeOffset: number;
  windowsTimeZoneId: string;
  olsonTimeZoneId: string;
  message: string;
}

function calculateDistances(file) {
  var N = file.length
  var n = 0
  file.forEach(element => {
    var from = turf.point([element.lon, element.lat])
    var to;
    var distance_array = [];
    file.forEach(second => {
      to = turf.point([second.lon, second.lat]);
      distance_array.push(turf.distance(from,to))
    
    });
    distance_array = distance_array.sort(function (a, b) {  return a - b;  });
    console.log(n+"/"+N)
    n+=1
    element["closest"] = distance_array[1];
  });
}

function calculateCircleDistances(file, index) {
  const from = turf.point([file[index].lon, file[index].lat])
  file.forEach(element => {
    var to = turf.point([element.lon, element.lat])
    element["circleDistance"] = turf.distance(from, to)
    
  })
  console.log(file)
}


const Index = () => {

  const [sliderValue, setSliderValue] = useState(0);
  const [sliderCircleValue, setSliderCircleValue] = useState(0);
  const [mapboxStyle, setMapboxStyle] = useState("mapbox://styles/mapbox/dark-v10");
  const [file, setFile] = useState(require("../../public/csvjson.json"))
  const [fileMax, setFileMax] = useState(require("../../public/csvjson.json").slice(0,400))
  const[D, setD] = useState(file.slice(0,100))
  const[radius, setRadius] = useState(0);
  const[iconsNumber, setIconsNumber] = useState(0);
  const[circleRadius, setCircleRadius] = useState(0);
  const[CircleIconsNumber, setCircleIconsNumber] = useState(0);
  const [mapState, setMapState] = useState({
    latitude: 37.7577,
    longitude: -122.4376,
    zoom: 3
  });

  file.forEach(element => {
    if(element.lat) {
    }
    if(element.Lat) {
      element.lat = element.Lat
      element.lon = element.Lon
    }
    if(element.LATITUDE) {
      element.lat = element.LATITUDE
      element.lon = element.LONGITUDE
    }

    if(element.latitude) {
      element.lat = element.latitude
      element.lon = element.longitude
    }
    
  });
  const testCircles = [circle([0,0], 3), circle([0,1], 4)]
  var dummy = 1
  for (let step = 0; step < 5; step++) {
    
    // Runs 5 times, with values of step 0 through 4.
    testCircles.push(circle([0,dummy], dummy))
    dummy+=1
  }
  const [displayFile, setDisplayFile] = useState(file);
  const [initialLong, setInitialLong] = useState(10.64)
  const [initialLat, setInitialLat] = useState(63.4)
  const INITIAL_VIEW_STATE = {
    longitude: initialLong,
    latitude: initialLat,
    zoom: 5,
    pitch: 45,
    bearing: 0,
  };

  const testToggle= (event) =>{
  setMapboxStyle(event.value)
}
const filesToggle= (event) =>{
  setFile(event.value)
  setFileMax(event.value.slice(0,1000))
  calculateDistances(fileMax);
  file.forEach(element => {
    if(element.lat) {
    }
    if(element.Lat) {
      element.lat = element.Lat
      element.lon = element.Lon
    }
    if(element.LATITUDE) {
      element.lat = element.LATITUDE
      element.lon = element.LONGITUDE
    }

    if(element.latitude) {
      element.lat = element.latitude
      element.lon = element.longitude
    }
    
  });

  fileMax.forEach(element => {
    if(element.lat) {
    }
    if(element.Lat) {
      element.lat = element.Lat
      element.lon = element.Lon
    }
    if(element.LATITUDE) {
      element.lat = element.LATITUDE
      element.lon = element.LONGITUDE
    }

    if(element.latitude) {
      element.lat = element.latitude
      element.lon = element.longitude
    }
    
  });
  setDisplayFile(file)
  //setInitialLong(file[0].lon)
  //setInitialLat(file[0].lat)
  
}
const [circleCenter, setCircleCenter] = useState([0,0]);
const [centerRadius, setCenterRadius] = useState(0)

const circles = circle(circleCenter, centerRadius)

const onClick = () =>{
  console.log("YEAH")
}


  const [vv, setVv] = useState(0);

  const cc = (e) => {
    console.log("CC funksjon")
    setVv(e.target.value)
  }




  // This function will be called when the user moves the slider
  const handleSliderChange = (event) => {
    setSliderValue(event.target.value);
    setRadius(event.target.value);
    setDisplayFile(fileMax.filter(item => (item["closest"] > event.target.value)));
    setIconsNumber(displayFile.length);
    setMapState({latitude: event.target.value,
                  longitude: 10.61,
                  zoom: 8})
    displayFile.forEach(element => {
      testCircles.push(circle([element.lon, element.lat], event.target.value))
    });
    setCenterRadius(0);
  }

  const handleSliderChangeCircle = (event) => {
    setCenterRadius(event.target.value);
    setSliderCircleValue(event.target.value);
    setDisplayFile(file.filter(item => (item["circleDistance"] < event.target.value)))
    setCircleRadius(event.target.value)
    setCircleIconsNumber(displayFile.length)
    console.log(file[0])
    
  }

  const [heatmapActive, { toggle: toggleHeatmapActive }] = useBoolean(false);
  const [pointsActive, { toggle: togglePointsActive }] = useBoolean(true);
  const [hexagonActive, { toggle: toggleHexagonActive }] = useBoolean(false);
  const [GeoJsonActive, { toggle: toggleGeoJsonActive }] = useBoolean(true);


  
  const hexagon = new HexagonLayer<Store>({
    id: "starbucks-heat",
    data: displayFile,
    getPosition: (d) => [d.lon,d.lat],
    getElevationWeight: (d) => 1,
    elevationScale: 50,
    extruded: true,
    radius: 500,
  });
  const heatmap = new HeatmapLayer<Store>({
    id: "starbucks-hex",
    data: displayFile,
    getPosition: (d) => [d.lon,d.lat],
    getWeight: (d) => 2,
  });

  const icons = new IconLayer<Store>({
    id: "icons",
    data: displayFile,
    message: "BYBY",
    getPosition: (d) => [d.lon,d.lat],
    getIcon: () => ({
      url: "point.jpeg",
      width: 128,
      height: 128,
      anchorY: 128,
    }),
    getSize: () => 50,
    pickable: true,
    onClick: event => {setDisplayFile(file.filter(item => (item["lat"] === event.object.lat))),setCircleCenter([event.object.lon, event.object.lat]), setCenterRadius(1), calculateCircleDistances(file ,file.findIndex(item => item["lat"] ===event.object.lat))}
    //onClick: event => console.log(event.object.lat)
  });

  const geojson = new GeoJsonLayer<Store>({
    id: 'geojson-layer',
    data: circles,
    pickable: true,
    stroked: false,
    filled: true,
    extruded: true,
    pointType: 'circle',
    lineWidthScale: 20,
    lineWidthMinPixels: 2,
    getFillColor: [160, 160, 180, 200],
    getLineColor: [0, 0, 0],
    getPointRadius: 100,
    getLineWidth: 1,
    getElevation: 30
  });

  const layers = useMemo(() => {
    const newLayers: any[] = [];
    if (pointsActive) newLayers.push(icons);
    if (heatmapActive) newLayers.push(heatmap);
    if (hexagonActive) newLayers.push(hexagon);
    if (GeoJsonActive) newLayers.push(geojson);
    return newLayers;
  }, [icons, pointsActive, heatmapActive, hexagonActive, GeoJsonActive, hexagon, heatmap, geojson]);

  return (
    <>
      <Box h="100vh">
        <DeckGL
          controller={true}
          initialViewState={INITIAL_VIEW_STATE}
          layers={layers}
          getTooltip={({ object }: any) =>
            object && object.store_id
          }
        >
          <StaticMap
            mapStyle={mapboxStyle}
            mapboxAccessToken="pk.eyJ1IjoiYWRyaWFuZmgiLCJhIjoiY2w2ZjM0NG91MGRxZDNpb3IwdnF5YzI0ZCJ9.Uutx0rtavBiPVT-_adhxxw"
          />
        </DeckGL>
      </Box>

      <Sidebar handleSliderChange={handleSliderChange} handleSliderChangeCircle={handleSliderChangeCircle} sliderValue={sliderValue} sliderCircleValue={sliderCircleValue} radius={radius} iconsNumber={iconsNumber} fileLength={file.length} fileMaxLength={fileMax.length} pointsActive={pointsActive} togglePointsActive={togglePointsActive} heatmapActive={heatmapActive} toggleHeatmapActive={toggleHeatmapActive} hexagonActive={hexagonActive} toggleHexagonActive={toggleHexagonActive} testToggle={testToggle} filesToggle={filesToggle} circleIconsNumber={CircleIconsNumber} circleRadius={circleRadius}/>
    </>
  );
};

export default Index;

