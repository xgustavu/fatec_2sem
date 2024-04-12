import styled, { isStyledComponent } from "styled-components";
import Block from "./components/Block";
import RBGColor from "./components/RGBColor";

export default function App() {
  return <WrapperSld>
    <RBGColor />
    <RBGColor />
    <RBGColor />
  </WrapperSld>;
}

const WrapperSld = styled.div`
  display: flex;
  flex-direction: column;
  align-items: center;
`;
