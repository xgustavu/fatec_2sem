// Arquivo: errado.ts

let contadorGlobal: number = 0;

function incrementarGlobal() {
    contadorGlobal++;
}

function mostrarContadorGlobal() {
    console.log("O contador global é:", contadorGlobal);
}

incrementarGlobal(); // Incrementa contadorGlobal para 1
contadorGlobal = 10; // Modifica contadorGlobal para 10
mostrarContadorGlobal(); // Esperado: 1, mas o resultado será 10
