import Block from "../Block";
import Input from "../Input";
import Line from "../Line";
import Title from "../Title";

export default function RBGColor(){
    return(
        <Block>
            <Title>RGB - Red, Green, Blue </Title>
            <Line>
                <Input label="R" />
                <Input label="G" />
                <Input label="B" />
            </Line>
        </Block>
    );
}