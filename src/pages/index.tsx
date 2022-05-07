import { Box } from "@chakra-ui/react";
import { HeatmapLayer, HexagonLayer } from "@deck.gl/aggregation-layers";
import { ScatterplotLayer } from "@deck.gl/layers";
import DeckGL from "@deck.gl/react";
import { useState } from "react";
import StaticMap from "react-map-gl";
// Viewport settings
const INITIAL_VIEW_STATE = {
  longitude: -0.118092,
  latitude: 51.509865,
  zoom: 13,
  pitch: 0,
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
    getFillColor: () => [0, 112, 74],
  });
  const [layers, setLayers] = useState([heatmap, scatter, hexagon]);
  return (
    <Box h="100vh" w="100vh">
      <DeckGL
        onViewStateChange={(e) =>
          setLayers(e.viewState.zoom > 13 ? [scatter] : [heatmap, hexagon])
        }
        controller={true}
        initialViewState={INITIAL_VIEW_STATE}
        layers={layers}
      >
        <StaticMap
          mapStyle="mapbox://styles/mapbox/navigation-night-v1"
          mapboxAccessToken={process.env.NEXT_PUBLIC_MAPBOX_ACCESS_TOKEN}
        />
      </DeckGL>
    </Box>
  );
};

export default Index;
