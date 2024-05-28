import Nomeloteria from "../NomeLoteria";
import Estimativa from "../Estimativa";
import { ThemeProvider } from "styled-components";
import { quina } from "../../styles/theme";
import Principal from "../Principal";
import Esquerda from "../Esquerda";
import Direita from "../Direita";
import Resultado from "../Resultado";
import Acumulou from "../Acumulou";
import DataResultado from "../DataResultado";

export default function QuinaT(){
    return(
        <ThemeProvider theme={quina}>
            <Principal>
                <Esquerda>
                    <Nomeloteria loteria = "quina">QUINA</Nomeloteria>
                    <Estimativa loteria = "quina"/>
                </Esquerda>
                <Direita>
                    <Resultado loteria = "quina" />
                    <Acumulou />
                    <DataResultado loteria = "quina" />
                </Direita>
            </Principal>
        </ThemeProvider>


    );
}