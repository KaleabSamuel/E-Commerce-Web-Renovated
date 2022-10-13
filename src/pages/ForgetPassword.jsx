import React from 'react'
import {useState} from 'react'
import {Link} from 'react-router-dom'
import { toast } from 'react-toastify'
import '../ForgetPassword.css'
function ForgetPassword() {

  const [email, setEmail] = useState('')

  const onChange = (e) => setEmail(e.target.value)

  const onSubmit = async (e) => {
    e.preventDefault()
  }

  return (
    <>
      <div id="FP-container">
      <form id='FP-form' action='http://localhost/ecom/ForgetPassword.php' method='post'>
        <div className='FP-form-inner'>
          <h2 id='Forget-pass'>Forget Password</h2>

          <div className='FP-form-group'>
            <label htmlFor='email' id='E-mail'> Enter your E-mail:</label> 
            <input required type="text" name="email" id="e-mail" />
          </div>

          <div className="FP-form-group">
            <label htmlFor='password' id='FP_pass'>New Password:</label> 
            <input required type="password" name="Newpassword" id="Newpassword" />
          </div>

          <Link to='/sign-in'>
          <input type='submit'  id='resetPassword' value='Reset'></input>
          </Link>
          

        </div>

          

      </form>
    </div>    
  </>
)
}

export default ForgetPassword