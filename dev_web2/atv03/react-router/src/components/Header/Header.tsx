import { Link } from "react-router-dom";
import "./Header.css";
const img = require("./img/cps.jpg");

export function Header() {
  return (
    <header className="container">
      <div className="img">
        <img className="image" src={img} alt="CPS centro paula souza" />
      </div>

      <div className="nav">
        <button className="nav-link">
          <Link className="Link" to={"/"}>
            RGB
          </Link>
        </button>
        <button className="nav-link">
          <Link className="Link" to={"/hsla"}>
            HSLA
          </Link>
        </button>
        <button className="nav-link">
          <Link className="Link" to={"/cmyk"}>
            CMYK
          </Link>
        </button>
      </div>
    </header>
  );
}
