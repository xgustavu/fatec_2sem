import { useState } from "react";

export default function App() {

  const [lista,setLista] = useState([] as string[]);

  const add = function(nome:string){
    const temp = [...lista,nome];
    setLista(temp);
  }

  //function listar(item:string,i:number){
  //  return <li key={i}>{item}</li>;
  //}

  return (
    <div>
      <h3>Exercício 3</h3>
    
      <Entrada add={add} />
      
      <Saida lista={lista}/>
    </div>
  );
}

interface SaidaProps {
  lista: string[];
}

interface EntradaProps{
  add: (nome:string) => void;
}

function Entrada({add}:EntradaProps){
  const [nome,setNome] = useState("");
  return (
    <div>
      <label htmlFor="name">Nome</label>
      <input id="name" type="text" value={nome} onChange={ (e) => setNome(e.target.value) }/>
      <button onClick={ () => add(nome)} >Salvar</button>
    </div>
  );
}

function Saida({lista}:SaidaProps){
  return (
    <ol>
      {
        lista.map( (item,i) => <li key={i}>{item}</li> )
      }
    </ol>
  );
}