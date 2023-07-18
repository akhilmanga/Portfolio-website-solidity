import React from 'react'
import './Skills.css'

import html from "../../assets/skills/html.svg";
import css from "../../assets/skills/css.svg";
import javascript from "../../assets/skills/javascript.png";
import eth from "../../assets/skills/eth.png";
import solidity from "../../assets/skills/solidity.svg";
import etherjs from "../../assets/skills/etherjs.png";
import hardhat from "../../assets/skills/hardhat.png";
import foundry from "../../assets/skills/foundry.png";
import canva from "../../assets/skills/canva.png";
import react from "../../assets/skills/react.svg";
import hero from "../../assets/hero-img.png";
import github from "../../assets/github.svg";
import eye from "../../assets/eye.svg";


const Skills = () => {
    return (
        <section className="skills-section">

            <img src={html} alt="html-icon" />
            <img src={css} alt="css-icon" />
            <img src={javascript} alt="javascript-icon" />
            <img src={eth} alt="eth-icon" />
            <img src={solidity} alt="solidity-icon" />
            <img src={etherjs} alt="etherjs-icon" />
            <img src={hardhat} alt="hardhat-icon" />
            <img src={foundry} alt="foundry-icon" />
            <img src={canva} alt="canva-icon" />
            <img src={react} alt="react-icon" />
            <img src={hero} alt="hero-img-icon" />
            <img src={github} alt="github-icon" />
            <img src={eye} alt="eye-icon" />
        </section>
    )
}

export default Skills