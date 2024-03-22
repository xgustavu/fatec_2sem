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

const retangulo = new Retangulo(2,3);

console.log("Área:" + retangulo.area());
console.log("Perímetro:" + retangulo.perimetro());