import React, { useState } from 'react';
import ReactMapGL, { Marker } from 'react-map-gl';
import 'mapbox-gl/dist/mapbox-gl.css';
var bucks = require("/Users/adrianfolge/Documents/test/deck-example/public/starbucks.json")
var d = bucks.slice(0,100);
const MapWithSlider = (props) => {
  // Set up the initial state for the map and the slider value
  {d.map(({ latitude, longitude}) => (
    console.log(latitude)
  ))}
  const[D, setD] = useState(d)
  const [mapState, setMapState] = useState({
    latitude: 37.7577,
    longitude: -122.4376,
    zoom: 3
  });
  const [sliderValue, setSliderValue] = useState(0);
  const [viewPort, setviewPort] = useState(0);
  console.log(bucks[0]);

  // This function will be called when the user moves the slider
  const handleSliderChange = (event) => {
    setSliderValue(event.target.value);
    setD(d.slice(0,event.target.value));
    setMapState({latitude: event.target.value,
                  longitude: 10.61,
                  zoom: 8})
  }

  // This function will be called when the user moves the map




  return (
    <div>
      {/* The slider to manipulate the data on the map */}
      <input
        type="range"
        min="0"
        max="90"
        value={sliderValue}
        onChange={handleSliderChange}
      />

      {/* The react-map-gl component */}
      <ReactMapGL
        style={{width: "100%", height: 600, borderRadius: 10, overflow: "hidden"}}
        mapStyle="mapbox://styles/mapbox/streets-v9"
        initialViewState={viewPort}
        mapboxAccessToken={"pk.eyJ1IjoiYWRyaWFuZmgiLCJhIjoiY2w2ZjM0NG91MGRxZDNpb3IwdnF5YzI0ZCJ9.Uutx0rtavBiPVT-_adhxxw"}
      >
        <Marker
          longitude={10.14}
          latitude={63.11}
        >
          </Marker>

        {/* A marker to show the location of the manipulated data on the map */}
        <Marker
          latitude={mapState.latitude}
          longitude={mapState.longitude}
        >
          </Marker>

          {D.map(({ latitude, longitude}) => (
            <Marker
              latitude={latitude}
              longitude={longitude}>
            </Marker>
          ))}
          {/* The data to be shown on the marker */}
          <div>Data: {sliderValue}</div>
      </ReactMapGL>
    </div>
  );
}
export default MapWithSlider;