import Navbar from "../components/Navbar"
import '../About.css'
import Footer from '../components/Footer'
const About = () => {
  return (
    <>
    <Navbar/>
    <div id="aboutContainer">
    <h1>About Us</h1>
    <h3>Welcome To <span id="anywhere"><a href="../">AnyWhere</a></span></h3>
    <p><span id="anywhere"><a href="../">AnyWhere</a></span> is an ECommerce Platform Developed by <span id="anywhere"><a  target="_blank" href="https://www.hilcoe.net/">HilcoE</a></span> Students. Here we will provide you only interesting Products, which you will like very much. We're dedicated to providing you the best Products. We're working to make Shopping Easier. We hope you enjoy our <span id="anywhere"><a href="../">AnyWhere</a></span> shopping site as much as we enjoy offering them to you.</p>
    <p className="thanks"> Thank You For Visiting Our Site Have a nice Shopping!</p>
    </div>
    <Footer />
    </>
  )
}
export default About