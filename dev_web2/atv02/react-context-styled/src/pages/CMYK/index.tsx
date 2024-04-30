import React from "react";
import { CMYKProvider } from "../../contexts/CMYKContext";
import CMYKColor from "../../components/CMYKColor";

export default function CMYK() {
    return (
        <CMYKProvider>
            <CMYKColor />
        </CMYKProvider>
    );
}
