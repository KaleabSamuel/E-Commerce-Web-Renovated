import Navbar from "../components/Navbar"
import '../faq.css'
const FAQ = () => {
  return (
    <>
     <Navbar/>
     <div className="faqContainer">
    <div id="faq">FAQ</div>
    <div id="question">Can i change or modify my order Address?
      <div id="text">YES! you can Modify your shipping address inside your Account</div>
    </div>
    <div id="question">How do i cancel my order?
     <div id="text"> Inside your cart you can Cancel your order. Once you cancelled your order it will be removed from your cart.</div>
    </div>
    <div id="question">How do i place an Order?
         <div id="text">By clicking on the Item you want to buy you can add the item to your cart then inside the cart you can finallize the transaction</div>
    </div>
    <div id="question">How do i check my Order Status?
      <div id="text">Inside your Account you can check There is a button called OrderStatus it will show you the list of your orders along with the status</div>
    </div>
    </div>
    </>
  )
}

export default FAQ