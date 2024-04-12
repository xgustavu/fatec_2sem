import styled from "styled-components";

export default function Block({children}:any){

    return <Sld>{children}</Sld>

}

const Sld = styled.div`
    display: flex;
    border-radius: 10px;
    border: 1px solid;
    background-color: yellow;
    flex-direction: column;
`;