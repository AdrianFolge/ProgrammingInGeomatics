import { FC, useEffect, useState, useReducer } from "react";
import {
  Box,
  Text,
  Heading,
  HStack,
  Switch,
  useBoolean,
  Stack,
} from "@chakra-ui/react";
import Select from 'react-select'
import Head from "next/head";
import DropZone from "../components/DropZone";
import styles from "../styles/Home.module.css";

const options = [
  { value: 'mapbox://styles/mapbox/dark-v11', label: 'Dark theme' },
  { value: 'mapbox://styles/mapbox/light-v11', label: 'Light theme' },
  { value: 'mapbox://styles/mapbox/satellite-v9', label: 'Satellite theme' },
  { value: 'mapbox://styles/mapbox/streets-v12', label: 'Streets' },
  { value: 'mapbox://styles/mapbox/outdoors-v12', label: 'Outdoors' },
  { value: 'mapbox://styles/mapbox/navigation-day-v1', label: 'Navigation day' }
]

const files = [
  { value: require("../../public/csvjson.json").slice(0,1000), label: 'Bussdata' },
  { value: require("../../public/stores.json").slice(0,1000), label: 'Storesdata' },
  { value: require("../../public/starbucks.json").slice(0,1000), label: 'Starbucksdata' }
]


// Setter verdien for hvor mange instanser av elementer i filen man vil ha.





const Icon = ({ icon  }: { icon: string }) => (
    <span className="material-symbols-outlined">
        {icon}
    </span>
);

const tabs = ["menu", "lock", "settings"];

type HeaderProps = {
    activeTab: number;
    onTabClicked: (tab: number) => void;
};

const NavHeader: FC<HeaderProps> = ({ activeTab, onTabClicked }) =>(
    <header className="sidebar-header">
        {tabs.map((tab, index) => (
            <button
                key={tab}
                type="button"
                onClick={() => onTabClicked(index)}
                className={`${activeTab === index? "active" : ""}`
            }>
                <Icon icon={tab}/>
            </button>   
        ))}
        <div
            className="underline"
            style={{
                translate: `${activeTab * 100}% 0` , 
            }}
        />
    </header>
);


export const Sidebar = ({sliderValue, handleSliderChange, sliderCircleValue,handleSliderChangeCircle, radius, iconsNumber, cc, klikken, fileLength, pointsActive, togglePointsActive, heatmapActive, toggleHeatmapActive, hexagonActive, toggleHexagonActive,GeoJsonActive, toggleGeoJsonActive, testToggle, filesToggle, circleRadius, circleIconsNumber}) => {
    const [activeTab, setActiveTab] = 
        useState<number>(0);
    const handleTabClicked = (tab: number) => {
        setActiveTab(tab);
    };

    // reducer function to handle state changes
    const reducer = (state, action) => {
      switch (action.type) {
        case "SET_IN_DROP_ZONE":
          return { ...state, inDropZone: action.inDropZone };
        case "ADD_FILE_TO_LIST":
          return { ...state, fileList: state.fileList.concat(action.files) };
        default:
          return state;
      }
    };
    const [data, dispatch] = useReducer(reducer, {
      inDropZone: false,
      fileList: [],
    });

    return(
        <aside className="sidebar">
            <NavHeader 
                activeTab={activeTab}
                onTabClicked={handleTabClicked}
            />

<div>
 
          </div>
            <div className="tabs">
                <div
                    style={{
                        translate: `-${
                            activeTab === 0? 0 : (activeTab / tabs.length) * 1000
                        }%`,
                    }}
                >

                    <div>
            <form>
      <div>
      <Select options={options} onChange={testToggle}   styles={{control: (baseStyles, state) => ({
      ...baseStyles,
      borderColor: state.isFocused ? 'grey' : 'purple',
    }),
  }}/>

<Select options={files} onChange={filesToggle}   styles={{control: (baseStyles, state) => ({
      ...baseStyles,
      borderColor: state.isFocused ? 'grey' : 'purple',
    }),
  }}/>
      </div>
      <input
        type="range"
        min="-1"
        max="100"
        value={sliderValue}
        onChange={handleSliderChange}
      />
      <div className="switch-label">Radius in km: {radius}</div>
      <div className="switch-label">Number of bus stops: {iconsNumber}</div>
      <div className="switch-label">Length of file: {fileLength}</div>

      <input
        type="range"
        min="-1"
        max="500"
        value={sliderCircleValue}
        onChange={handleSliderChangeCircle}
        />

      <div className="switch-label">Radius in km: {circleRadius}</div>
      <div className="switch-label">Number of bus stops: {circleIconsNumber}</div>
      <div className="switch-label">Length of file: {fileLength}</div>
      <div>
        <div className="row">
          <HStack>
            <Text className="switch-label">Points:</Text>
            <Switch isChecked={pointsActive} onChange={togglePointsActive} className="tt"/>
          </HStack>
        </div>
        <div className="row">
          <HStack>
            <Text className="switch-label">Heatmap:</Text>
            <Switch isChecked={heatmapActive} onChange={toggleHeatmapActive} />
          </HStack>
        </div>
        <div className="row">
          <HStack>
            <Text className="switch-label">Hexagons:</Text>
            <Switch isChecked={hexagonActive} onChange={toggleHexagonActive} />
          </HStack>
        </div>
        <div className="row">
          <HStack>
            <Text className="switch-label">GeoJson:</Text>
            <Switch isChecked={GeoJsonActive} onChange={toggleGeoJsonActive} />
          </HStack>
        </div>
        <input type="number" className="glow" id="unik" onChange={cc}></input>
        <div className="glow" onClick={klikken}>
          OK
        </div>
        <div className="containDropZone">
        <DropZone data={data} dispatch={dispatch} />
        </div>
      </div>
            </form>
          </div>

          
                </div>
            </div>
        </aside>
    );
};