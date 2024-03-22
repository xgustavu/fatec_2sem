import { useState } from "react";

export default function App() {

  const [nome,setNome] = useState("");
  const [lista,setLista] = useState([] as string[]);

  const add = function(){
    const temp = [...lista,nome];
    setLista(temp);
  }

  function listar(item:string,i:number){
    return <li key={i}>{item}</li>;
  }

  return (
    <div>
      <h3>Exercício 2</h3>
      <div>
        <label htmlFor="name">Nome</label>
        <input id="name" type="text" value={nome} onChange={ (e) => setNome(e.target.value) }/>
        <button onClick={add} >Salvar</button>
        </div>
        <div>
          <ol>
            {
              lista.map(listar) // ou em arrow function fica assim - ( (item, i) → ‹li key={i}>(item}</li> )
            }
          </ol>
        </div>
    </div>
  );
}