import { Link, useNavigate } from "react-router-dom";
import Navbar from "../components/Navbar";
import Footer from "../components/Footer";
import "../../src/profile.css";
import UserContext from "../context/UserContext";
import UseContext from "react";

const Profile = () => {
        
  return (
     <>
     
     <Navbar />
     <div className="ProfileContt">
     <Link to="/SOrders" id="PPlink">Your Orders</Link>
     <Link to="/PTransaction" id="PPlink">Your Transactions</Link>
     </div>
     <Footer/>
    </>
  )
}

export default Profile