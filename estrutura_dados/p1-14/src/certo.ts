let globalVariable: number = 10; // Variável global

function updateGlobalVariable(localVariable: number) {
    for (let i = 0; i < 5; i++) {
        localVariable = i; // Atualizando a variável local
        console.log("Dentro do loop, local:", localVariable);
    }
    console.log("Fora do loop, local:", localVariable);
}

updateGlobalVariable(globalVariable);
console.log("Fora da função, global:", globalVariable);

export default globalVariable;