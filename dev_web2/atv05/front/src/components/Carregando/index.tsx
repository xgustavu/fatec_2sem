import styled from "styled-components";

export default function Carregando({ children }: any) {
  return( 
  <Sld>{children}</Sld>
    );
}

const Sld = styled.div`
  display: flex;
  flex-direction: column;
  align-items: center;
  justify-content: center;
  height: 100vh;
  width: 100vw;
  font-family: roboto;
`;
