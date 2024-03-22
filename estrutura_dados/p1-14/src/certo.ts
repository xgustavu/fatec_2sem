let variavelGlobal: number = 10;

function attVarGlobal(variavelGlobal: number) {
    for (let i = 0; i < 5; i++) {
        variavelGlobal = i; // Atualizando a variável local
        console.log("Dentro do loop, local:", variavelGlobal);
    }
    console.log("Fora do loop, local:", variavelGlobal);
}

attVarGlobal(variavelGlobal);
console.log("Fora da função, global:", variavelGlobal);

export default variavelGlobal;
