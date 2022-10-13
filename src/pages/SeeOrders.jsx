import Navbar from "../components/Navbar";
import Footer from "../components/Footer";
import "./Order.css";
import UserContext from "../context/UserContext";
import { useContext } from "react";
const SeeOrders=()=>{
   const {user}=useContext(UserContext);
    
    return(
        <>
        <Navbar/>
         <form action="http://localhost/ecom/Orders.php" method="GET" id="OrderForm">
           <label htmlFor="" id="labelPofileOO">Enter Your User ID</label> <br />
           <input type="submit" value="Send" id="ProfileSendbtn" />
         </form>
        <Footer />
        </>
    )
}
export default SeeOrders;