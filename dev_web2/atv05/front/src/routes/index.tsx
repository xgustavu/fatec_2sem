import { BrowserRouter, Routes, Route } from "react-router-dom";
import styled from "styled-components";
import Menu from "../components/Menu";
import MegaSenaT from "../components/MegaSenaT";
import TimeManiaT from "../components/TimeManiaT";
import QuinaT from "../components/QuinaT";


export default function Rotas() {
  return (
    <PageSld>
      <BrowserRouter>
        <Menu />
        <BodySld>
          <Routes>
            <Route path="/megasena" element={<MegaSenaT />} />
            <Route path="/timemania" element={<TimeManiaT />} />
            <Route path="/quina" element={<QuinaT />} />
          </Routes>
        </BodySld>
      </BrowserRouter>
    </PageSld>
  );
}

const PageSld = styled.div`
  display: flex;
`;

const BodySld = styled.div`
  position: absolute;
  top: calc(
    50% + 5px
  );
  left: 50%;
  transform: translate(
    -50%,
    -50%
  ); 
  display: flex;
  flex-direction: column;
  align-items: center;
  box-sizing: border-box;
`;