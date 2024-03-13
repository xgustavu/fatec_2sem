class Retangulo {
  base: number;
  altura: number;
  constructor(base: number, altura: number) {
    this.base = base;
    this.altura = altura;
  }
  area(): number {
    return this.base * this.altura;
  }
  perimetro(): number {
    return 2 * this.base + 2 * this.altura;
  }
}

const retangulo1 = new Retangulo(10,8);

console.log("Area:",retangulo1.area());
console.log("Perimetro:",retangulo1.perimetro());
