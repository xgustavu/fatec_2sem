import { useContext } from "react";
import { RandomContext } from "../components/contexts/RandomContext";

export default function useRandom(){
    return useContext(RandomContext);
};