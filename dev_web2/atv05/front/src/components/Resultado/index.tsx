import styled from "styled-components";
import { useLoteria } from "../../hooks";

export default function Resultado({loteria }: any) {
    const { megasena, quina, timemania } = useLoteria();
    let dadosLoteria;
    switch (loteria) {
        case "megasena":
            dadosLoteria = megasena;
            break;
        case "quina":
            dadosLoteria = quina;
            break;
        case "timemania":
            dadosLoteria = timemania;
            break;
        default:
            dadosLoteria = null;
    }

    if (!dadosLoteria) {
        return null;
    }
    return (
        <SldLinha>
            {dadosLoteria.dezenas.map(dezena =>
                <SldBola key={dezena}>{dezena}</SldBola>
            )
            }
        </SldLinha>
    );
}

const SldLinha = styled.div`
    display: flex;
`;

const SldBola = styled.div`
font-size: 18px;
font-weight: bold;
background-color: ${(props) => props.theme.bola};
color: ${(props) => props.theme.bolafonte};
border-radius: 25px;
padding: 10px;
margin: 0px 10px;
`;