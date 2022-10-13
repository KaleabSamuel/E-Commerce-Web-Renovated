import Navbar from "../components/Navbar";
import Footer from "../components/Footer";

const ProfileTransaction=()=>{
     return(
        <>
        <Navbar/>
        <div className="ProfileTransaction">
        <form action="http://localhost/ecom/SeeTransaction.php" method="GET" id="OrderForm">
           <label htmlFor="" id="labelPofileOO">Enter Your User ID</label> <br />
           <input type="text" id="OrderText" name="Ptransaction" placeholder="userId"/>
           <input type="submit" value="Send" id="ProfileSendbtn" />
         </form>
        </div>
        <Footer/>
        </>
     )
}
export default ProfileTransaction;