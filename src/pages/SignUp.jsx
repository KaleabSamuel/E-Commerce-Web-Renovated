import { Link } from 'react-router-dom'
import '../SignUp.css' 
import Navbar from '../components/Navbar'


function SignUp() {

  

  return (
    <div id="container">
      <form id='bigger-form' action='http://localhost/ecom/SignUp.php' method='post'>
        <div className='form-inner'>
          <h2 id='NewToanywhere'>New To Anywhere?</h2>
          <h5 id='createAccount'>Create your Account</h5>

          <div className='form-group' >
            <label htmlFor='fname' id='name'> First Name:</label> 
            <input required type="text" name="fname" id="fname" />
          </div>

          <div className="form-group">
            <label htmlFor='lname'id='Lname'> Last Name:</label> 
            <input required type="text" name="lname" id="lname" />
          </div>

          <div className="form-group">
            <label htmlFor='password' id='pass'> Password:</label> 
            <input required type="password" name="password" id="password" />
          </div>

          <div className="form-group">
            <label htmlFor='phone' id='phone'> Phone Number:</label> 
            <input required type="text" name="phoneNum" id="phoneNum" /> 
          </div>

          <div className="form-group">
            <label htmlFor='city' id='city'>City:</label> 
            <input required type="text" name="city" id="City" /> 
          </div>

          <div className="form-group">
            <label htmlFor='state' id='state'>State:</label> 
            <input required type="text" name="state" id="State" /> 
          </div>

          <div className="form-group">
            <label htmlFor='zipCode' id='zipCode'>Zip Code:</label> 
            <input required type="text" name="zipCode" id="zip" /> 
          </div>

          <div className="form-group">
            <label htmlFor='email' id='Email'> Email:</label> 
            <input required type="text" name="email" id="email" /> 
          </div>

          <input type='submit'  id='toSignU' value='Signup'/>
          
          <Link to= '/sign-in' id='toSignI'> Already Have an Account </Link>

        </div>
      </form>
    </div>
      
  )
}

export default SignUp