//funções que tem um retorno never sempre irão abortar algo
function abortar(mensagem: string): never {
  throw new Error(mensagem)
}

//interface com função

interface Quadrado {
  lado: number;
  perimetro(lado: number): number;
}

//function overload (sobrecarga)
function normalizar(valor: number):number;
function normalizar(valor: number[]): number[];
function normalizar(valor: number | number[]): number | number[] {
  if (typeof valor === 'number') {
    return Number(valor.toFixed())
  } else {
    return String(valor).split(',').map(item => Number(item))
  }
}
