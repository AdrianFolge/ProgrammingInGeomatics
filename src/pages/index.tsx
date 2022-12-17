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
}

//var bucks = require("/Users/adrianfolge/Documents/test/deck-example/public/starbucks.json")
var buss = require("/Users/adrianfolge/Documents/test/deck-example/public/csvjson.json")
buss = buss.slice(0,1000)

function calculateDistances() {
  var N = buss.length
  var n = 0
  buss.forEach(element => {
    var from = turf.point([element.LONGITUDE, element.LATITUDE])
    var to;
    var distance_array = [];
    buss.forEach(second => {
      to = turf.point([second.LONGITUDE, second.LATITUDE]);
      distance_array.push(turf.distance(from,to))
    
    });
    distance_array = distance_array.sort(function (a, b) {  return a - b;  });
    console.log(n+"/"+N)
    n+=1
    element["closest"] = distance_array[1];
  });
}

calculateDistances();
//var distance = turf.distance(from, to, options);







const Index = () => {
  const [slicedValue, setSlicedValue] = useState(30);
  const [sliderValue, setSliderValue] = useState(0);
  const [viewPort, setviewPort] = useState(0);
  const[D, setD] = useState(buss)
  const[radius, setRadius] = useState(0);
  const[iconsNumber, setIconsNumber] = useState(0);
  const [mapState, setMapState] = useState({
    latitude: 37.7577,
    longitude: -122.4376,
    zoom: 3
  });


 

  // This function will be called when the user moves the slider
  const handleSliderChange = (event) => {
    setSliderValue(event.target.value);
    setRadius(event.target.value);
    setD(buss.filter(item => (item["closest"] > event.target.value)));
    setIconsNumber(D.length);
    setMapState({latitude: event.target.value,
                  longitude: 10.61,
                  zoom: 8})
  }


  const [heatmapActive, { toggle: toggleHeatmapActive }] = useBoolean(false);
  const [pointsActive, { toggle: togglePointsActive }] = useBoolean(true);
  const [hexagonActive, { toggle: toggleHexagonActive }] = useBoolean(false);
  const hexagon = new HexagonLayer<Store>({
    id: "starbucks-heat",
    data: D,
    getPosition: (d) => [d.LONGITUDE,d.LATITUDE],
    getElevationWeight: (d) => 1,
    elevationScale: 50,
    extruded: true,
    radius: 1000,
  });
  const heatmap = new HeatmapLayer<Store>({
    id: "starbucks-hex",
    data: D,
    getPosition: (d) => [d.LONGITUDE,d.LATITUDE],
    getWeight: (d) => 2,
  });

  const icons = new IconLayer<Store>({
    id: "icons",
    data: D,
    getPosition: (d) => [d.LONGITUDE,d.LATITUDE],
    getIcon: () => ({
      url: "point.jpeg",
      width: 128,
      height: 128,
      anchorY: 128,
    }),
    getSize: () => 50,
    pickable: true,
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
    <Header />

      <Stack
        justify="space-between"
        bg="gray.100"
        p="2"
        position="fixed"
        top="0"
        w="full"
        left="0"
        direction={{ base: "column", lg: "row" }}
        zIndex={5}
      >
        <Heading>Starbuckses of the World</Heading>
        <HStack spacing="6">
          <HStack>
            <Text>Points:</Text>
            <Switch isChecked={pointsActive} onChange={togglePointsActive} />
          </HStack>
          <HStack>
            <Text>Heatmap:</Text>
            <Switch isChecked={heatmapActive} onChange={toggleHeatmapActive} />
          </HStack>
          <HStack>
            <Text>Hexagons:</Text>
            <Switch isChecked={hexagonActive} onChange={toggleHexagonActive} />
          </HStack>
        </HStack>
      </Stack>
      <Box h="100vh">
        <DeckGL
          controller={true}
          initialViewState={INITIAL_VIEW_STATE}
          layers={layers}
          getTooltip={({ object }: any) =>
            object &&
            `${object.streetAddressLine1}${
              object.streetAddressLine2 && "\n" + object.streetAddressLine2
            }${object.streetAddressLine3 && "\n" + object.streetAddressLine3}${
              object.city && "\n" + object.city
            }${object.postalCode && "\n" + object.postalCode}`
          }
        >
          <StaticMap
            mapStyle="mapbox://styles/mapbox/dark-v10"
            mapboxAccessToken="pk.eyJ1IjoiYWRyaWFuZmgiLCJhIjoiY2w2ZjM0NG91MGRxZDNpb3IwdnF5YzI0ZCJ9.Uutx0rtavBiPVT-_adhxxw"
          />
        </DeckGL>
      </Box>

      <Sidebar handleSliderChange={handleSliderChange} sliderValue={sliderValue} radius={radius} iconsNumber={iconsNumber} ok={"HEI"}/>
    </>
  );
};

export default Index;
