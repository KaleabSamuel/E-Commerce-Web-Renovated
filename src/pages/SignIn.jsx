import React from 'react'
import '../SignIn.css'
import { useState, useEffect, useContext } from 'react';
import { Link, useNavigate } from 'react-router-dom';
import UserContext from '../context/UserContext';


const SignIn = () => {
  const navigate = useNavigate();
  const {addUser} = useContext(UserContext)

  useEffect(()=>{
    fetch("http://localhost/ecom/user.php")
      .then((response) => {
        return response.json();
      })
      .then((result) => {
        addUser(result)
      });
  },[])

  const handleClick = ()=>{
    fetch("http://localhost/ecom/SignIn.php")
      .then((response) => {
        return response.json();
      })
      .then((result) => {
        if(result.role == 'customer')
          navigate('/')
        else if(result.role == 'admin')
          navigate('/admin')
      });

      
  }


  return(
    <>
      <div id="Signin-containerr">
      <form id='SignIn-Form' action='http://localhost/ecom/SignIn.php' method='post'>
        <div className='form-innerr'>
          <h2 id='toSignIn'>Signin</h2>

          <div className="form-groupp">
            <label htmlFor='email'> Email:</label> 
            <input required type="text" name="email" id="email" /> <br/> <br/>
          </div>

          <div className="form-groupp">
            <label htmlFor='password'> Password:</label> 
            <input required type="password" name="password" id="password" />
          </div>

          <input type='submit' value='Signin'/>

        </div>
        </form>
      </div>
    </>
  )
}

export default SignIn