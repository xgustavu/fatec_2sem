class Point{
    x:number;
    y:number;

    constructor(x:number, y:number){
        this.x = x;
        this.y = y;
    }
    distancia(ponto:Point){
        return (Math.sqrt(Math.pow((ponto.x-this.x),2)+Math.pow((ponto.y-this.y),2)));
    }
}

class Rectangle{
    ie:Point;
    sd:Point;

    constructor(ie:Point, sd:Point){
        this.ie = ie;
        this.sd = sd;
    }

    area():number{
        const base:number = this.sd.x - this.ie.x;
        const altura:number = this.sd.y - this.ie.y;
        console.log("Base: ", base);
        console.log("Altura: ", altura);
        return base*altura;
    }
}

const sd = new Point(3,5);
const ie = new Point(1,2);

const r = new Rectangle(ie,sd);
console.log("Área:", r.area());