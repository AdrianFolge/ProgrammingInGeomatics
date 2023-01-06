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
import { ScatterplotLayer, IconLayer } from "@deck.gl/layers";
import DeckGL from "@deck.gl/react";
import { useMemo, useState } from "react";
import StaticMap, { NavigationControl } from "react-map-gl";
import StarbucksIcon from "../../public/starbucks.png";
import turf from "turf";
import Header from "../components/Header"
import { Sidebar } from "../components/Sidebar";



// Viewport settings
const INITIAL_VIEW_STATE = {
  longitude: -0.118092,
  latitude: 51.509865,
  zoom: 10,
  pitch: 45,
  bearing: 0,
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


const Index = () => {

  var r =require("../../public/csvjson.json")
  r.forEach(element => {
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
    
  });

  const [slicedValue, setSlicedValue] = useState(0);
  const [sliderValue, setSliderValue] = useState(0);
  const [mapboxStyle, setMapboxStyle] = useState("mapbox://styles/mapbox/dark-v10");
  const [file, setFile] = useState(require("../../public/csvjson.json").slice(0,1000))
  const [viewPort, setviewPort] = useState(0);
  const [buss, setBuss] = useState(file.slice(0,100));
  const[D, setD] = useState(file.slice(0,100))
  const[radius, setRadius] = useState(0);
  const[iconsNumber, setIconsNumber] = useState(0);
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
  const [initialLong, setInitialLong] = useState(file[0].lon)
  const [initialLat, setInitialLat] = useState(file[0].lat)
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
  setInitialLong(file[0].lon)
  setInitialLat(file[0].lat)
  
}

const onClick = () =>{
  console.log("YEAH")
}


  const [vv, setVv] = useState(0);

  const cc = (e) => {
    setVv(e.target.value)
  }
  const klikken= () =>{
    setFile(file.slice(0,vv))
    calculateDistances(file);
  }




  // This function will be called when the user moves the slider
  const handleSliderChange = (event) => {
    setSliderValue(event.target.value);
    setRadius(event.target.value);
    setFile(file.filter(item => (item["closest"] > event.target.value)));
    setIconsNumber(file.length);
    setMapState({latitude: event.target.value,
                  longitude: 10.61,
                  zoom: 8})
  }


  const [heatmapActive, { toggle: toggleHeatmapActive }] = useBoolean(false);
  const [pointsActive, { toggle: togglePointsActive }] = useBoolean(true);
  const [hexagonActive, { toggle: toggleHexagonActive }] = useBoolean(false);
  const hexagon = new HexagonLayer<Store>({
    id: "starbucks-heat",
    data: file,
    getPosition: (d) => [d.lon,d.lat],
    getElevationWeight: (d) => 1,
    elevationScale: 50,
    extruded: true,
    radius: 500,
  });
  const heatmap = new HeatmapLayer<Store>({
    id: "starbucks-hex",
    data: file,
    getPosition: (d) => [d.lon,d.lat],
    getWeight: (d) => 2,
  });

  const icons = new IconLayer<Store>({
    id: "icons",
    data: file,
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
    onClick: event => console.log(event) 
  });

  const layers = useMemo(() => {
    const newLayers: any[] = [];
    if (pointsActive) newLayers.push(icons);
    if (heatmapActive) newLayers.push(heatmap);
    if (hexagonActive) newLayers.push(hexagon);
    return newLayers;
  }, [icons, pointsActive, heatmapActive, hexagonActive, hexagon, heatmap]);

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

      <Sidebar handleSliderChange={handleSliderChange} sliderValue={sliderValue} radius={radius} iconsNumber={iconsNumber} cc={cc} klikken={klikken} fileLength={file.length} pointsActive={pointsActive} togglePointsActive={togglePointsActive} heatmapActive={heatmapActive} toggleHeatmapActive={toggleHeatmapActive} hexagonActive={hexagonActive} toggleHexagonActive={toggleHexagonActive} testToggle={testToggle} filesToggle={filesToggle}/>
    </>
  );
};

export default Index;

