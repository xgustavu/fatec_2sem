// Arquivo: certo.ts

function incrementarLocal(contador: number): number {
    return contador + 1;
}

function mostrarContadorLocal(contador: number) {
    console.log("O contador local é:", contador);
}

let contadorLocal: number = 0;
contadorLocal = incrementarLocal(contadorLocal);
mostrarContadorLocal(contadorLocal); // Sem ambiguidade, sempre mostrará o valor correto.