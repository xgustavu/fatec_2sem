import styled from "styled-components";

export default function Line({children}:any){
    return <Sld>{children}</Sld>
}

const Sld = styled.div`
  display: flex;
  flex-direction: row;
`;