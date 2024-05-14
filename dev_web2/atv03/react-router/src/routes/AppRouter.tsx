import { Route, BrowserRouter as Router, Routes } from "react-router-dom";
import { Header } from "../components/Header/Header";
import { RGBProvider } from "../contexts/RGBContext";
import { HSLAProvider } from "../contexts/HSLAContext";
import { CMYKProvider } from "../contexts/CMYKContext";
import RGBColor from "../components/RGBColor";
import HSLAColor from "../components/HSLAColor";
import CMYKColor from "../components/CMYKColor";

export const AppRouter = () => {
  return (
    <RGBProvider>
      <HSLAProvider>
        <CMYKProvider>
          <Router>
            <div>
              <Header />
              <Routes>
                <Route path="/" element={<RGBColor />} />
                <Route path="/hsla" element={<HSLAColor />} />
                <Route path="/cmyk" element={<CMYKColor />} />
              </Routes>
            </div>
          </Router>
        </CMYKProvider>
      </HSLAProvider>
    </RGBProvider>
  );
};
