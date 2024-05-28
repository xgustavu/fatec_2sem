import styled from "styled-components";
import ItemMenu from "../ItemMenu";
import { megasena, quina, timemania } from "../../styles/theme";


export default function Menu () {

    return(
      <Sld>
        <RightSld>
          <ItemMenu link ="/timemania" cor ={timemania.loteria}  >Timemania</ItemMenu>
          <ItemMenu link = "/megasena" cor = {megasena.loteria}>MegaSena</ItemMenu>
          <ItemMenu link = "/quina" cor = {quina.loteria} >Quina</ItemMenu>
        </RightSld>
      </Sld>

    );
}

const Sld = styled.div`
  position: fixed;
  display: flex;
  flex-direction: row;
  align-items: center;
  justify-content: space-between;
  top: 4;
  left: 10;
  width: 100%;
  height: 60px;
  z-index: 1000;
  background-color: #ffffff;
  box-sizing: border-box;
`;

const RightSld = styled.div`
  display: flex;
  flex-direction: row;
`;
