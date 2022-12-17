import React from 'react'
import MapWithSlider from "../components/MapSlider";

var data = require("/Users/adrianfolge/Documents/test/deck-example/public/starbucks.json")

function upload() {
  return (
    <div>
        <MapWithSlider data={data}/>
    </div>
  )
}

export default upload