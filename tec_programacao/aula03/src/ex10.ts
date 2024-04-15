class Texto extends String { 

    primeira():string { 
        return this.charAt(0); 
    }

    ultima():string { 
        return this.charAt(this.length-1); 
    }

    tamanho():number {
        return this.length;
    }
}

const palavra = new Texto("Boa noite");
console.log("Quantidade de letras:", palavra.tamanho());
console.log("Primeira letra:", palavra.primeira());
console.log("Última letra:", palavra.ultima());
console.log("Texto em minusculo:", palavra.toLowerCase());