import Nomeloteria from "../NomeLoteria";
import Estimativa from "../Estimativa";
import { ThemeProvider } from "styled-components";
import { megasena } from "../../styles/theme";
import Principal from "../Principal";
import Esquerda from "../Esquerda";
import Direita from "../Direita";
import Resultado from "../Resultado";
import Acumulou from "../Acumulou";
import DataResultado from "../DataResultado";

export default function MegaSenaT() {
    return (
        <ThemeProvider theme={megasena}>
            <Principal>
                <Esquerda>
                    <Nomeloteria loteria="megasena">MEGASENA</Nomeloteria>
                    <Estimativa loteria="megasena" />
                </Esquerda>
                <Direita>
                    <Resultado loteria="megasena" />
                    <Acumulou />
                    <DataResultado loteria="megasena" />
                </Direita>
            </Principal>
        </ThemeProvider>


    );
}