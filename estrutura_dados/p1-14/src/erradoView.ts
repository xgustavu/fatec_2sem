import { variavelGlobal } from "./erradoModel";

export function attVarGlobal() {
    for (let i = 0; i < 5; i++) {
        let variavelLocal: number = i; // Variável local com o mesmo nome
        console.log("Dentro do loop, local:", variavelLocal);
    }
    console.log("Fora do loop, local:", variavelGlobal);
}

/*
Saída esperada:

Dentro do loop, local: 0
Dentro do loop, local: 1
Dentro do loop, local: 2
Dentro do loop, local: 3
Dentro do loop, local: 4
Fora do loop, local: 4
Fora da função, global: 10
*/