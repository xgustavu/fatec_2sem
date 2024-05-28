import { Provider } from "./contexts";
import Principal from "./pages/main";

export default function App() {
    return (
        <Provider>
            <Principal/>
        </Provider>
    );
}
