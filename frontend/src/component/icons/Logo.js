import { Link } from "react-router-dom";
import * as React from "react";
import styles from './Logo.module.css';
import logo from "./logo.webp"

function SvgLogo(props) {
  return (
    <Link className={styles.link} to="/">
      <img src={logo} alt="Logo" width="100" height="50" />
    </Link>
  );
}

export default SvgLogo;
