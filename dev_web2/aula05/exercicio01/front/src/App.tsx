import { useState } from "react";

export default function App() {

  const [nome,setNome] = useState("Maria");

  return (
    <div>
      <h3>Exercício 1</h3>
      <div>
        <label htmlFor="nome">Nome</label>
        <input id="nome" value={nome} onChange={ (e) => setNome(e.target.value) }/>
        </div>
        <div>
          <p>Nome: {nome}</p>
        </div>
    </div>
  );
}