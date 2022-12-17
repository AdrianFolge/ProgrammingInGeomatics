import Header from "../components/Header";
import Map, { Marker, GeolocateControl } from "react-map-gl";
import "mapbox-gl/dist/mapbox-gl.css";
import React from 'react'
const TOKEN = 'pk.eyJ1IjoiYWRyaWFuZmgiLCJhIjoiY2w2ZjM0NG91MGRxZDNpb3IwdnF5YzI0ZCJ9.Uutx0rtavBiPVT-_adhxxw';

function testPage() {
    var bucks = require("/Users/adrianfolge/Documents/test/deck-example/public/Samfunnssikkerhet_0000_Norge_25833_TilfluktsromOffentlige_GeoJSON.json")
    var bricked = require("/Users/adrianfolge/Documents/test/deck-example/public/converted.json")
    {bricked.features.map((brick) => (
       console.log(brick.LAT/100000)
    ))}
    return (
    <div>
      
    <Map
      id="createMap"
      mapboxAccessToken={TOKEN}
      initialViewState={{
        longitude: 10.939795,
        latitude: 92.785856,
        zoom: 14
      }}
      mapStyle="mapbox://styles/mapbox/streets-v11"
      style={{width: "100%", height: 600, borderRadius: 10, overflow: "hidden"}}

  
    >
      <Marker 
        draggable={true} 
        longitude={-5.1429795} 
        latitude={82.415856}
        ></Marker>
    {bricked.features.map((brick) => (
        <Marker 
        draggable={true} 
        longitude={brick.LOT/100000} 
        latitude={brick.LAT/1000000}
        ></Marker>
    ))}

    </Map>
  </div>
  )
}

export default testPage