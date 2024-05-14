import styled from "styled-components";
import { AppRouter } from "./routes/AppRouter";
import { Header } from "./components/Header/Header";

export default function App() {
  return (
    <WrapperSld>
      <AppRouter />
    </WrapperSld>
  );
}

const WrapperSld = styled.div`
  display: flex;
  flex-direction: column;
  align-items: center;
`;
