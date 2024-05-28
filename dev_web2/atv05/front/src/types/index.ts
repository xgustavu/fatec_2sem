export interface LoteriaProps {
  megasena: Props;
  quina: Props;
  timemania: Props;
}

export interface Props {
  acumulado: boolean;
  concursoEspecial: boolean;
  dataApuracao: string;
  dataPorExtenso: string;
  dataProximoConcurso: string;
  dezenas: string[];
  numeroDoConcurso: number;
  quantidadeGanhadores: number;
  tipoPublicacao: number;
  tipoJogo: string;
  valorEstimadoProximoConcurso: number;
  valorPremio: number;
}

