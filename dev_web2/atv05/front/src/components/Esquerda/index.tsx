import styled from "styled-components";

export default function Esquerda ({children} : any){
    return(
        <Sld>{children}</Sld>

    );
}

const Sld = styled.div`
    display: flex;
    flex-direction: column;
    width: 50%
    `;