import { RBBContext } from "../../contexts/RBGContext";
import Block from "../Block";
import Input from "../Input";
import Line from "../Line";
import Title from "../Title";
import { useContext } from "react";

export default function RBGColor(){

    const r = useContext(RBBContext)

    return(
        <Block>
            <Title>RGB - Red, Green, Blue </Title>
            <Line>
                <Input label="R" value={r}/>
                <Input label="G" />
                <Input label="B" />
            </Line>
        </Block>
    );
}