import styled from "styled-components";
import { ButtonProps } from "../types";

export default function Button({ children, action }: ButtonProps) {
  return <ButtonSld onClick={action}>{children}</ButtonSld>;
}

const ButtonSld = styled.button`
  display: flex;

  padding: 10px 20px;
  background-color: ${({ theme }) => theme.button.bg};

  border: none;
  border-radius: 5px;

  color: ${({ theme }) => theme.button.text};
  margin-left: 5px;

  cursor: pointer;

  &:hover {
    background-color: ${({ theme }) => theme.button.bgHover};
  }

  transition: background-color 0.3s ease;
`;
