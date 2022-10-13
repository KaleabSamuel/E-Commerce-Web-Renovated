import Navbar from "../components/Navbar"
import Footer from "../components/Footer"
import UserContext from "../context/UserContext"
import CartContext from "../context/CartContext"
import { useContext } from "react"

const Checkout = () => {
  const {user} = useContext(UserContext);
  const {cart} = useContext(CartContext);
  const sum = cart.reduce((acc, { price }) => acc + price, 0);

  const handleClick = ()=>{
    cart.map((item)=>{
      fetch(`http://localhost/wamp64/www/ecom/makeTransaction.php?id=1&proId=${item.id+909}&quantity=1&total=${item.price}&date=CURDATE()&category=${item.category}`,{
        method: 'POST'
      })
        .then((response) => {
          console.log(response)
          return response.json();
        })
        .then((result) => {
          console.log(result);
        })
    })
  }

  return (
    <div>
      <Navbar />
      <div className="container last-checkout">
        <form action="" onSubmit={(e)=>{
          e.preventDefault()
        }}>
          <h2><label htmlFor="name">Name</label></h2>
          <input type="text" name="name" defaultValue={user.UserFname}/>
          <h2><label htmlFor="phone-number">Phone Number</label></h2>
          <input type="text" name="phone-number" defaultValue={user.UserPhoneNo}/>
          <h2><label htmlFor="ship-to">Ship To</label></h2>
          <input type="text" name='ship-to' defaultValue={'location'}/>
          <h2><label htmlFor="card-number">Card Number</label></h2>
          <input type="text" name='card-number' defaultValue={'Card Number'}/>
          <h3>You are Paying <sup>$</sup>{sum} for {cart.length} items</h3>
          <button type="submit" onClick={handleClick}>Checkout</button>
        </form>
      </div>
      <Footer />
    </div>
  )
}

export default Checkout