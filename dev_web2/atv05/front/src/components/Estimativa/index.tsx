import styled from "styled-components";
import { useLoteria } from "../../hooks";

interface EstimativaProps {
    loteria: string;
}

export default function Estimativa({ loteria }: EstimativaProps) {
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
        <SldBloco>
            <SldTextoEst>
                Estimativa de prêmio do próximo concurso.
                Sorteio em {dadosLoteria.dataProximoConcurso}:
            </SldTextoEst>
            <SldValorEstimativa>
                {dadosLoteria.valorEstimadoProximoConcurso.toLocaleString("pt-BR", {
                    style: "currency",
                    currency: "BRL",
                })}
            </SldValorEstimativa>
        </SldBloco>
    );
}

const SldBloco = styled.div`
display: flex;
flex-direction: column;
`;

const SldTextoEst = styled.div`
margin-top: 13px;
font-size: 15px;
color: #4c556c;
`;

const SldValorEstimativa = styled.div`
font-size: 20px;
margin-top: 15px;
font-weight: bold;
color:  ${(props) => props.theme.loteria};
`;
