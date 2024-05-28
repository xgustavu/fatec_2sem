import styled from "styled-components";
import { ButtonProps } from "../types";

export default function Ball({ children, action }: ButtonProps) {
  return <BallSld onClick={action}>{children}</BallSld>;
}

export const BallSld = styled.button`
  display: flex;

  padding: 10px 20px;
  background-color: ${({ theme }) => theme.button.bg};

  border: none;
  border-radius: 20px;

  padding: 10px;

  font-size: 18px;
  font-weight: bold;

  color: ${({ theme }) => theme.button.text};
  margin-left: 5px;

  cursor: pointer;

  &:hover {
    background-color: ${({ theme }) => theme.button.bgHover};
  }

  transition: background-color 0.3s ease;
`;
