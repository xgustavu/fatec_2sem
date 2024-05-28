import styled from "styled-components";
import { useLoteria } from "../../hooks";

export default function DataResultado({ loteria }: any) {
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

    if (!dadosLoteria){
        return null;
    }

    return (
        <Sld>
            {
                `Concurso ${dadosLoteria.numeroDoConcurso} - ${dadosLoteria.dataPorExtenso}`
            }
        </Sld>
    );
}

const Sld = styled.div`
    margin-top: 15px;
    color: #4c556c;
    padding-left: 15px;
    font-size: 15px;
    `;