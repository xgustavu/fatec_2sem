import { createContext, useState } from "react";
import { RGBContextProps } from "../types";

export const RBBContext = createContext ({} as RGBContextProps);

export function RBGProvider({children}:any){

    const [r,setR] = useState(0);
    const [g,setG] = useState(0);
    const [b,setB] = useState(0);

    return (
        <RBBContext.Provider value={{r, g, b, setR, setG, setB}}>
            {children}
        </RBBContext.Provider>
    )
}