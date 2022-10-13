import { Link, useNavigate } from "react-router-dom";
import Logo from "../images/logo1.png";
import { FaSearch, FaRegUserCircle, FaShoppingCart } from "react-icons/fa";
import CartContext from "../context/CartContext";
import SearchContext from "../context/SearchContext";
import { useContext, useRef } from "react";
import "../catagory.css";
import UserContext from "../context/UserContext";

const Navbar = () => {
  const { cart } = useContext(CartContext);
  const { addSearch, addCategory } = useContext(SearchContext);
  const navigate = useNavigate();
  const searchInput = useRef();
  let cat = document.querySelector(".catagoryy");

  const { user } = useContext(UserContext);
  return (
    <>
      <div className="main-header">
        <div className="container py_1">
          <Link to="/">
            <img src={Logo} alt="Logo" className="logo" />
          </Link>
          <h4 className="company-name">ANYWHERE</h4>
          <div className="header-container">
            <p style={{ fontSize: "15px" }}>
              Order Online or Call us: +251-91-234-5678
            </p>
            <div className="search">
              <input
                style={{
                  height: "25px",
                  border: "solid #333 1px",
                  borderRadius: "10px",
                }}
                ref={searchInput}
                type="text"
                name="tobeSearched"
                id="tobeSearched"
                onKeyDown={(e) => {
                  if (e.key === "Enter") {
                    navigate("/searched");
                  }
                }}
              />
              <Link to="/searched">
                <FaSearch size={25}  
                onClick={() => {
                addSearch(searchInput.current.value);
                addCategory(cat.options[cat.selectedIndex].text);
              }}/>
              </Link>
              {/* </Link> */}
            </div>
            <div
              onClick={(e) => {
                e.preventDefault();
                if (user == null) {
                  navigate("/sign-in");
                } else {
                  navigate("/profile");
                }
              }}
            >
              <FaRegUserCircle size={30} style={{ marginTop: "5px" }} />
            </div>
            <Link to="/cart">
              <p style={{ fontSize: "20px" }}>
                <FaShoppingCart
                  size={30}
                  style={{ marginTop: "5px", marginRight: "10px" }}
                />
                {cart.length}
              </p>
            </Link>
          </div>
        </div>
      </div>
      <div className="main-nav">
        <div className="container py_0">
          <ul>
            <li>
              <Link to="/">Home</Link>
            </li>
            <li>
              <Link to="/about">About</Link>
            </li>
            <li>
              <Link to="/contact-us">Contact Us</Link>
            </li>
          </ul>
        </div>
      </div>
    </>
  );
};
export default Navbar;
