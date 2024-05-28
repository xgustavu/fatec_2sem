import styled from "styled-components";

export default function PrincipalBloco({ children }: any) {

  return (
    <Sld>{children}</Sld>
  );
}

const Sld = styled.div`
 padding: 0px 20px;
 font-family: roboto;
 `;
