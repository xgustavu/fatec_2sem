import styled from "styled-components";

export default function Principal ({children}: any) {

    return(
        <Sld>{children}</Sld>
    );

}

const Sld = styled.div`
    display: flex;
    flex-direction: row; 
    padding: 30px 0px;
    border-bottom: 1px solid #ddd;
}`