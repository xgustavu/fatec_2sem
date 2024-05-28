import styled from "styled-components";
//@ts-ignore
import trevoMegasena from "../../assets/trevo-megasena.png";
//@ts-ignore
import trevoQuina from "../../assets/trevo-quina.png";
//@ts-ignore
import trevoTimemania from "../../assets/trevo-timemania.png";


export default function Nomeloteria({ children, loteria }: any) {
    let trevoLoteria;
    switch (loteria) {
        case "megasena":
            trevoLoteria = trevoMegasena;
            break;
        case "quina":
            trevoLoteria = trevoQuina;
            break;
        case "timemania":
            trevoLoteria = trevoTimemania;
            break;
        default:
            trevoLoteria = null;
    }

    return (
        <Sld>
            {trevoLoteria && <img src={trevoLoteria} alt={`Trevo ${loteria}`} />}
            <SldNome>
                {children}
            </SldNome>
        </Sld>
    )
}

const Sld = styled.div`
    display: flex;
`
const SldNome = styled.div`
    font-size: 28px;
    font-weight: bold;
    color: ${(props) => props.theme.loteria};
    margin-left: 10px;
`