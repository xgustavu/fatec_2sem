class Filme {
    titulo: string;
    duracao: number;
    constructor(titulo: string, duracao: number) {
    this.titulo = titulo;
    this.duracao = duracao;
    }
    print(): void {
        console.log(`O filme ${this.titulo} possui ${this.duracao} min.`);
    }
    }

    const filme1 = new Filme("De volta para o futuro",116);

    const filme2 = new Filme("Matrix",136);

    filme1.print();
    filme2.print();