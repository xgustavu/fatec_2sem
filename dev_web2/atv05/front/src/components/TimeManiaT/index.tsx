import Nomeloteria from "../NomeLoteria";
import Estimativa from "../Estimativa";
import { ThemeProvider } from "styled-components";
import { timemania } from "../../styles/theme";
import Principal from "../Principal";
import Esquerda from "../Esquerda";
import Direita from "../Direita";
import Resultado from "../Resultado";
import Acumulou from "../Acumulou";
import DataResultado from "../DataResultado";

export default function TimeManiaT() {
    return (
        <ThemeProvider theme={timemania}>
            <Principal>
                <Esquerda>
                    <Nomeloteria loteria="timemania">TIMEMANIA</Nomeloteria>
                    <Estimativa loteria="timemania" />
                </Esquerda>
                <Direita>
                    <Resultado loteria="timemania" />
                    <Acumulou />
                    <DataResultado loteria="timemania" />
                </Direita>
            </Principal>
        </ThemeProvider>
    );
}