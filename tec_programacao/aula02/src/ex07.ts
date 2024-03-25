class Ponto {
    x:number;
    y:number;
    n:string;

    constructor(x:number, y:number, n:string){
        this.x = x;
        this.y = y;
        this.n = n;
        console.log("Ponto: ",this.n,"x= ",this.x,"| y= ",this.y);
    }

    distancia(ponto:Ponto){
        return (Math.sqrt(Math.pow((ponto.x-this.x),2)+Math.pow((ponto.y-this.y),2)));
    }


}

const a = new Ponto(3,5, "ponto1");
const b = new Ponto(1,2, "ponto2");

console.log("Distância:", a.distancia(b));

export default Ponto;