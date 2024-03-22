let variavelGlobal: number = 10;

function attVarGlobal(variavelLocal: number) {
    for (let i = 0; i < 5; i++) {
        variavelLocal = i;
        console.log("Dentro do loop, local:", variavelLocal);
    }
    console.log("Fora do loop, local:", variavelLocal);
}

attVarGlobal(variavelGlobal);
console.log("Fora da função, global:", variavelGlobal);

export default variavelGlobal;
