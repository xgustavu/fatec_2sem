import { ReactNode } from "react";

export interface ThemeProps {
    name: string;
    bgPage: string;
    button: {
        bg: string;
        text: string;
        bgHover: string;
    },
};

export interface RandomContextProps{
    theme: ThemeProps;
    toggleTheme: () => void;
    randomize: () => void;
    numbers: string[];
    increment: (value: number) => void;
}

export interface ButtonProps {
    children: ReactNode;
    action: () => void;
}