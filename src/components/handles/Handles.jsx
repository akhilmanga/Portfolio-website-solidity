import React from 'react'
import './Handles.css'
import { AiFillLinkedin, AiFillTwitterSquare } from 'react-icons/ai';
import { FaGithubSquare } from 'react-icons/fa';


const Wallet = () => {

    return (
        <section className='socials'>
            <a href="https://www.linkedin.com/in/akhilmanga/" target='_blank' rel="noopener noreferrer"><AiFillLinkedin className='icon' /></a>
            <a href="https://twitter.com/akhil_manga" target='_blank' rel="noopener noreferrer"><AiFillTwitterSquare className='icon' /></a>
            <a href="https://github.com/akhilmanga" target='_blank' rel="noopener noreferrer"><FaGithubSquare className='icon' />
            </a>


        </section>
    )
}
export default Wallet;