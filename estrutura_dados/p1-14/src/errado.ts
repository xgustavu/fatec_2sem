let globalVariable: number = 10; // Variável global

function updateGlobalVariable() {
    for (let i = 0; i < 5; i++) {
        let globalVariable: number = i; // Variável local com o mesmo nome
        console.log("Dentro do loop, local:", globalVariable);
    }
    console.log("Fora do loop, local:", globalVariable);
}

updateGlobalVariable();
console.log("Fora da função, global:", globalVariable);

export default globalVariable;