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
import { ScatterplotLayer } from "@deck.gl/layers";
import DeckGL from "@deck.gl/react";
import { useEffect, useMemo, useState } from "react";
import StaticMap from "react-map-gl";
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
  const [scatterActive, { toggle: toggleScatterActive }] = useBoolean(false);
  const [hexagonActive, { toggle: toggleHexagonActive }] = useBoolean(true);
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
  const scatter = new ScatterplotLayer<Store>({
    id: "starbucks-points",
    data: "starbucks.json",
    pickable: true,
    onClick: ({ object }) => alert(object.streetAddressLine1),
    getPosition: (d) => [d.longitude, d.latitude],
    radiusMinPixels: 10,
    getFillColor: () => [255, 0, 0],
  });

  const layers = useMemo(() => {
    const newLayers: any[] = [];
    if (scatterActive) newLayers.push(scatter);
    if (heatmapActive) newLayers.push(heatmap);
    if (hexagonActive) newLayers.push(hexagon);
    return newLayers;
  }, [scatter, scatterActive, heatmapActive, hexagonActive, hexagon, heatmap]);

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
            <Text>Scatter:</Text>
            <Switch isChecked={scatterActive} onChange={toggleScatterActive} />
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
        >
          <StaticMap
            mapStyle="mapbox://styles/djaustin/cl2w8osxe000t15qbtajv7o2x"
            mapboxAccessToken={process.env.NEXT_PUBLIC_MAPBOX_ACCESS_TOKEN}
          />
        </DeckGL>
      </Box>
    </>
  );
};

export default Index;
