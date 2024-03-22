import { useState } from "react";

export default function App() {

  const [lista,setLista] = useState([] as Pessoa[]);

  const add = function(nome:string, idade:string){
    const temp = [...lista,{nome,idade}];
    setLista(temp);
  }

  return (
    <div>
      <h3>Exercício 3</h3>
    
      <Entrada add={add} />
      
      <Saida lista={lista}/>
    </div>
  );
}

interface Pessoa {
  nome:string;
  idade:string;
}

interface SaidaProps {
  lista: Pessoa[];
}

interface EntradaProps{
  add: (nome:string, idade:string) => void;
}

function Entrada({add}:EntradaProps){

  const [nome,setNome] = useState("");
  const [idade,setIdade] = useState("");

  return (
    <div>
      <div>
        <label htmlFor="name">Nome: </label>
        <input id="name" type="text" value={nome} onChange={ (e) => setNome(e.target.value) }/>
      </div>
      <div>
        <label htmlFor="idade">Idade: </label>
        <input id="idade" type="text" value={idade} onChange={ (e) => setIdade(e.target.value) }/>
      </div>
      <div>
        <button onClick={ () => add(nome,idade)} >Salvar</button>
      </div>
    </div>
  );
}

function Saida({lista}:SaidaProps){
  return (
    <ol>
      {
        lista.map( (item,i) => <li key={i}>{item.nome} {item.idade} </li> )
      }
    </ol>
  );
}