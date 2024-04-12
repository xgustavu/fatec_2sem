import styled from "styled-components"

export default function Input({label}:any){
    return <WarrperSld>
        <LabelSld>{label}</LabelSld>
        <InputSld />
    </WarrperSld>
}

const WarrperSld = styled.div`
    display: flex;
    flex-direction: column;
`;

const LabelSld = styled.label`
    color: #444;
    font-weight: 600;
    font-size: 18px;
`;

const InputSld = styled.input`
    width: 120px;
`;