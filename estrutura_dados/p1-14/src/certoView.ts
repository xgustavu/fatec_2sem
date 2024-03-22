import { variavelGlobal } from "./certoModel";

export function attVarGlobal(variavelLocal: number) {
    for (let i = 0; i < 5; i++) {
        variavelLocal = i; // Atualizando a variável local
        console.log("Dentro do loop, local:", variavelLocal);
    }
    console.log("Fora do loop, local:", variavelLocal);
}
