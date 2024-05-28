import "./App.css";
import { RandomProvider } from "./components/contexts/RandomContext";
import Main from "./pages/Main/main";

function App() {
  return (
    <RandomProvider>
      <Main />
    </RandomProvider>
  );
}

export default App;
