import { FaLock, FaArrowRight, FaMapMarkerAlt } from "react-icons/fa";
import { motion, AnimatePresence } from "framer-motion";
import { Link } from "react-router-dom";
import CartContext from "../context/CartContext";
import { useContext } from "react";
import CardWide from "../components/CardWide";
import UserContext from "../context/UserContext";
import { useNavigate } from "react-router-dom";


const Cart = () => {
  const { cart } = useContext(CartContext);
  const { user, addUser } = useContext(UserContext);
  const sum = cart.reduce((acc, { price }) => acc + price, 0);
  const navigate = useNavigate();


  return (
    <>
      <div className="cart-page">
        <div className="container cart-page-nav">
          <div style={{ display: "inline-block" }}>
            <h2 style={{ display: "inline-block" }}>
              ANYWHERE <span style={{ fontWeight: "normal" }}>/</span>
            </h2>
            <p
              style={{ display: "inline-block", color: "var(--primary-color)" }}
            >
              <FaLock /> SECURE CHECKOUT
            </p>
          </div>
          <div className="link-to-home" style={{ display: "inline-block" }}>
            <Link to="/">
              <p style={{ fontSize: "14px" }}>
                CONTINUE SHOPPING <FaArrowRight />
              </p>
            </Link>
          </div>
        </div>
      </div>
      <div className="middle-container container">
        <div className="ship-to-ethiopia">
          <p style={{ display: "inline-block" }}>
            <FaMapMarkerAlt /> Ship to Ethiopia
          </p>
        </div>
        <div className="item-summary">
          <h3
            style={{
              fontSize: "20px",
              animation: "none",
              textDecoration: "none",
            }}
          >
            Item Summary({cart.length})
          </h3>
        </div>
        <div className="items">
          {cart.length === 0 ? (
            "No items to display"
          ) : (
            <AnimatePresence>
              {cart.map((item) => (
                <motion.div
                  key={item.id}
                  initial={{ opacity: 0 }}
                  animate={{ opacity: 1 }}
                  exit={{ opacity: 0 }}
                  layout
                >
                  <CardWide key={item.id} item={item} />
                </motion.div>
              ))}
            </AnimatePresence>
          )}
        </div>
        <div className="order-summary">
          <h3
            style={{
              fontSize: "20px",
              animation: "none",
              textDecoration: "none",
            }}
          >
            Order Summary
          </h3>
          <div
            className="subtotal"
            style={{ display: "flex", justifyContent: "space-between" }}
          >
            <p style={{ fontSize: "15px", display: "inline-block" }}>
              Subtotal
            </p>
            <h3
              style={{
                display: "inline-block",
                fontSize: "20px",
                animation: "none",
                textDecoration: "none",
              }}
            >
              US$ {isNaN(parseFloat(sum.toFixed(2))) ? 0 : sum}
            </h3>
          </div>
          <p style={{ textAlign: "right" }}>
            Reward {Math.round(sum)} ANYWHERE Points
          </p>
          <button className="checkout" style={{cursor: 'pointer'}} onClick={()=>{
            if(user==null)
              navigate('/sign-in')
            else
              navigate('/checkout')
          }}>Checkout Now</button>
        </div>
      </div>
    </>
  );
};

export default Cart;
