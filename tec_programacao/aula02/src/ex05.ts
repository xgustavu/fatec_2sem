class Questao {
    enunciado:string;
    valor:number;

    constructor(e:string,v:number){
        this.enunciado = e;
        this.valor = v;
    }

    print():void{
        console.log(`${this.enunciado} (${this.valor} pts.)`);
    }
}

const questao = new Questao("O que é um array?", 0.5);
questao.print();