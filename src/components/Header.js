import Image from "next/image";
import { SearchIcon,MenuIcon,UserCircleIcon,GlobeAltIcon,UserGroupIcon } from "@heroicons/react/outline"
import { useState } from "react";
import { useRouter } from "next/dist/client/router";


 

function Header() {

    
    const [searchInput, setSearchInput] = useState("");
    const router = useRouter();
    const resetInput = () => {
        setSearchInput("");
    };

    const search = () => {
        router.push({
            pathname: "/search",
            query: {
                location: searchInput,
            }
        });
    };
    return (
        <header className="sticky top-0 z-50 grid grid-cols-3 bg-white shadow-md py-5 px-5 md:px-10 ">
            

            {/* left */}
            <div onClick={() => router.push("/")} className="relative flex items-center h-10 cursor-pointer my-auto rounded-lg">
                <Image 
                    src='/refined.png'
                    layout="fill"
                    objectFit="contain" 
                    objectPosition='left'
                />
            </div>

            {/* Middle */}

            <div className="flex items-center ">
        

                
            </div>

            {/* Right */}

            <div onClick={() => router.push("/about")} className="flex items-center space-x-4 justify-end text-yellow-900">
                <p className="hidden md:inline cursor-pointer">About us</p>
            
                
  
            </div>
            {searchInput && (

            <div className="col-start-1 col-end-3 flex justify-center items-center h-screen rounded-lg border-2 grow "> <Home/> 
                <div className="flex">
                    <button onClick={resetInput} className="flex-grow text-gray-500">Cancel</button>
                    <button onClick={search} className="flex-grow text-red-400">Search</button>

                </div>
            </div>
  

                  

            )}
            
        </header>
    )
}

export default Header