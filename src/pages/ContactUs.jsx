import Navbar from "../components/Navbar";
import '../contact.css';
import {FontAwesomeIcon} from '@fortawesome/react-fontawesome';
import {faFacebook} from "@fortawesome/free-brands-svg-icons"
import {faTwitter} from "@fortawesome/free-brands-svg-icons"
import {faInstagram} from "@fortawesome/free-brands-svg-icons"
import {faYoutube} from "@fortawesome/free-brands-svg-icons"
import {faGithub} from "@fortawesome/free-brands-svg-icons"
import Footer from '../components/Footer'

const contactUs = () => {
    return (
        <>
        <Navbar/>
        <div id="contactContainer">
           <div id="get">GET IN TOUCH!</div>
            <div>
                <p>If you have Any questions or if your are facing any problems regarding our site you can directly contact our services</p>
            </div>
            <div id="forms">
            <form action="http://localhost/ecom/contactus.php" method="post">
                {/* http://localhost/ecom/contactus.php -> this is for xampp server users, you should add ecom directory inside htdocs and copy cantactus.php file inside ecom directory */}
                 <input required type="text" id="fnameContact" name="fnameContact" placeholder="First Name"/> <br />
                 <input required type="text" id="lnameContact" name="lnameContact" placeholder="Last Name"/> <br />
                 <input type="email" name="ContactUsemail" id="emailContact" placeholder="example@gmail.com"/> <br />
                 <textarea required name="ContactUsmsg" id="textAreaContactus" placeholder="What Seems to be the Issue?"/> <br />
                 <input type="submit" id="sendContactUs" value="Send Message" />
            </form>
        </div>
        </div>
        <div id="socials">
            <h3 id="h3follow">Follow Us on Social Media</h3>
            <div className="contactusLinks">
            <a target="_blank" href="https://facebook.com"><FontAwesomeIcon icon={faFacebook} size="2x" className="fb"></FontAwesomeIcon> </a>
            <a target="_blank" href="https://instagram.com"><FontAwesomeIcon icon={faInstagram} size="2x" className="ig"></FontAwesomeIcon> </a>
            <a target="_blank" href="https://youtube.com"><FontAwesomeIcon icon={faYoutube} size="2x" className="yt"></FontAwesomeIcon> </a>
            <a target="_blank" href="https://github.com"><FontAwesomeIcon icon={faGithub} size="2x" className="gt"></FontAwesomeIcon> </a>
            <a target="_blank" href="https://twitter.com"><FontAwesomeIcon icon={faTwitter} size="2x" className="tw"></FontAwesomeIcon> </a>
          </div>
         </div>
         <Footer />
        </>
    )
}
export default contactUs