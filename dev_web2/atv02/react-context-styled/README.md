## Atividade - React Context e Styled Components

O objetivo do aplicativo é permitir ao usuário compor cores usando RGB, HSLA e CMYK.
Falta implementar o componente para compor cores usando CMYK. Será necessário manter a estrutura fornecida e utilizar somente os componentes `Block`,`Title`,`Line` e `Input` para criar o componente CMYK.

![](https://github.com/arleysouza/react-context-styled/blob/main/images/front.png)

### Instruções de uso
Todos os pacotes necessários já estão no `package.json`.
```
git clone https://github.com/arleysouza/react-context-styled.git front
cd front
npm i
npm start
```

### Estrutura do projeto

### Pasta components
- Toda a formatação dos componentes utiliza styled-components;
- `Block`: componente usado para construir a caixa onde colocamos os campos de entrada. A cor de fundo desse componente é alterada de acordo com os valores fornecidos nos campos de entrada; 
- `Input`: componente usado para construir cada campo de entrada. As propriedades `min` e `max` estabelecem os limites de valores aceitos pelo componente:
```<Input label="R" value={r} setValue={setR} min={0} max={255} />```
- `Line`: componente usado para receber os campos de entrada;
- `Title`: componente usado para criar o título que colocamos dentro do `Block`;
- `HSLAColor` e `RGBColor`: componente usado para criar o painel de entrada das cores HSLA e RGB, respectivamente. Caberá a você codificar o componente `CMYKColor` seguindo a mesma estrutura. Os valores mínimos e máximos de C, M, Y e K é `[0,1]` ou pode ser representado no intervalo `[0%,100%]`.

### Pasta contexts
- `HSLAContext`: define o `Provider` e `Context` usado para manter as propriedades da cor HSLA;
- `RGBContext`: define o `Provider` e `Context` usado para manter as propriedades da cor RGB;
- `CMYKContext`: caberá a você codificar o `Provider` e `Context` usado para manter as propriedades da cor CMYK, bem como criar a propriedade `color` usando as seguintes instruções:
```
const r = 255 * (1 - cyan/100) * (1 - black/100);
const g = 255 * (1 - magenta/100) * (1 - black/100);
const b = 255 * (1 - yellow/100) * (1 - black/100);
const color = `rgb(${r}, ${g}, ${b})`;
```

### Pasta hooks
- `useHSLA` e `useRGB`: define, respectivamente, um hook para cada contexto;
- `useCMYK`: caberá a você codificar um hook para o contexto `CMYKContext`.

### Pasta pages
- `HSLA`: define a árvore de componentes que podem acessar o contexto `HSLAContext`, ou seja, qualquer componente aninhado dentro de `<HSLAColor />` poderá acessar as propriedades do contexto através do hook `useHSLA()`:
```
<HSLAProvider>
   <HSLAColor />
</HSLAProvider>
```
- `RGB`: define a árvore de componentes que podem acessar o contexto `RGBContext`.

### Pasta types
- `index`: define os tipos `RGBContextProps`, `HSLAContextProps` e `InputProps`. Caberá a você codificar o tipo `CMYKContextProps` com as propriedade que o contexto `CMYKContext` precisará propagar.

