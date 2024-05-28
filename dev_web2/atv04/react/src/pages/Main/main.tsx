import styled, { ThemeProvider } from "styled-components";
import Menu from "../../components/Menu/Menu";
import Button from "../../components/Button/Button";
import Ball from "../../components/Ball/Ball";
import useRandom from "../../hooks";

export default function Main() {
  const { theme, toggleTheme, numbers, randomize, increment } = useRandom();

  return (
    <ThemeProvider theme={theme}>
      <WrapperSld>
        <Menu>
          <Button action={randomize}>reset</Button>
          <Button action={toggleTheme}>{theme.name}</Button>
        </Menu>
        <LineSld>
          {numbers.map((number, index) => (
            <Ball action={() => increment(index)} key={index}>
              {number}
            </Ball>
          ))}
        </LineSld>
      </WrapperSld>
    </ThemeProvider>
  );
}

const WrapperSld = styled.div`
  display: flex;
  flex-direction: column;

  border: 1px solid #888;
  border-radius: 5px;

  padding: 10px 10px 30px 10px;

  background-color: ${({ theme }) => theme.bgPage};

  width: 400px;
`;

const LineSld = styled.div`
  display: flex;
  flex-direction: row;
  justify-content: space-around;

  margin-top: 30px;
`;
