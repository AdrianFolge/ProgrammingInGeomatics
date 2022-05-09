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
import { useMemo } from "react";
import StaticMap, { NavigationControl } from "react-map-gl";
import StarbucksIcon from "../../public/starbucks.png";
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

const Index = () => {
  const [heatmapActive, { toggle: toggleHeatmapActive }] = useBoolean(false);
  const [pointsActive, { toggle: togglePointsActive }] = useBoolean(true);
  const [hexagonActive, { toggle: toggleHexagonActive }] = useBoolean(false);
  const hexagon = new HexagonLayer<Store>({
    id: "starbucks-heat",
    data: "starbucks.json",
    getPosition: (d) => [d.longitude, d.latitude],
    getElevationWeight: (d) => 1,
    elevationScale: 50,
    extruded: true,
    radius: 1000,
  });
  const heatmap = new HeatmapLayer<Store>({
    id: "starbucks-hex",
    data: "starbucks.json",
    getPosition: (d) => [d.longitude, d.latitude],
    getWeight: (d) => 2,
  });

  const icons = new IconLayer<Store>({
    id: "icons",
    data: "starbucks.json",
    getPosition: (d) => [d.longitude, d.latitude],
    getIcon: () => ({
      url: "starbucks.png",
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
            mapboxAccessToken={process.env.NEXT_PUBLIC_MAPBOX_ACCESS_TOKEN}
          />
        </DeckGL>
      </Box>
    </>
  );
};

export default Index;
