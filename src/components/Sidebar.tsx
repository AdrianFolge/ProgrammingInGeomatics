import { FC, useEffect, useState } from "react";

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


export const Sidebar = ({sliderValue, handleSliderChange, radius, iconsNumber, cc, klikken, fileLength}) => {
    const [activeTab, setActiveTab] = 
        useState<number>(0);
    const handleTabClicked = (tab: number) => {
        setActiveTab(tab);
    };

    return(
        <aside className="sidebar">
            <NavHeader 
                activeTab={activeTab}
                onTabClicked={handleTabClicked}
            />

<div>
            <form>
              <div className="textbox">
                <span className="material-symbols-outlined">
                  account_circle
                </span>
                <input type="text" required />
              </div>
              <div className="textbox">
                <span className="material-symbols-outlined">lock</span>
                <input type="password" required />
              </div>
              <div className="textbox">
                <span className="material-symbols-outlined">Email</span>
                <input  type="text" required />
              </div>
            </form>
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
              <div className="row">
                <div className="switch-label">Dark Mode</div>
                <span className="switch">
                  <input id="switch-round" type="checkbox" />
                  <label htmlFor="switch-round"></label>
                </span>
              </div>
              <div className="row">
                <div className="switch-label">Accessibility Mode</div>
                <span className="switch">
                  <input id="switch-round" type="checkbox" />
                  <label htmlFor="switch-round"></label>
                </span>
              </div>
              <div className="row">
                <div className="switch-label">Quirks Mode</div>
                <span className="switch">
                  <input id="switch-round" type="checkbox" />
                  <label htmlFor="switch-round"></label>
                </span>
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
      <div>
        
        <input type="number" className="glow" id="unik" onChange={cc}></input>
        <div className="glow" onClick={klikken}>
          OK
        </div>
      </div>
            </form>
          </div>

          
                </div>
            </div>
        </aside>
    );
};