let variavelGlobal: number = 10;

function attVarGlobal() {
    for (let i = 0; i < 5; i++) {
        let variavelGlobal: number = i;
        console.log("Dentro do loop, local:", variavelGlobal);
    }
    console.log("Fora do loop, local:", variavelGlobal);
}

attVarGlobal();
console.log("Fora da função, global:", variavelGlobal);

export default variavelGlobal;
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