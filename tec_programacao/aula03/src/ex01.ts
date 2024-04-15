class Operacao { 
    somar(a:number,b:number):number { 
        return a + b; 
    } 
} 
 
class Calcular extends Operacao { 
    x: number; 
    y: number; 
 
    constructor(x:number, y:number) { 
       super();
        this.x = x;
        this.y = y;
    } 
 
    somar(): number { 
       return this.x + this.y;
    } 
} 
 
const c = new Calcular(5,15); 
console.log("Somar:", c.somar());

export default c;