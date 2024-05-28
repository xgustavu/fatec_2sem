import styled from "styled-components";

export default function Direita({ children }: any) {

    return (
        <Sld>{children}</Sld>
    );
}
const Sld = styled.div`
    width: 50%
    `;