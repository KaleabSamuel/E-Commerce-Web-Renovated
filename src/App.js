import { BrowserRouter as Router, Routes, Route } from "react-router-dom";
import Home from "./pages/Home";
import About from "./pages/About";
import FAQ from "./pages/FAQ";
import SignIn from "./pages/SignIn";
import SignUp from "./pages/SignUp";
import ForgetPassword from "./pages/ForgetPassword";
import Profile from "./pages/Profile";
import ContactUs from "./pages/ContactUs";
import Cart from "./pages/Cart";
import SingleProduct from "./pages/SingleProduct";
import Searched from "./pages/Searched";
import Admin from "./pages/Admin";
import AdminAdmin from "./pages/AdminAdmin";
import AdminUser from "./pages/AdminUser";
import AdminProduct from "./pages/AdminProduct";
import Checkout from "./pages/Checkout";
import { CartProvider } from "./context/CartContext";
import { SingleProductProvider } from "./context/SingleProductContext";
import { SearchProvider } from "./context/SearchContext";
import { UserProvider } from "./context/UserContext";
import SeeOrders from "../src/pages/SeeOrders";
import ProfileTransaction from "../src/pages/ProfileTransaction";

function App() {
  return (
    <>
      <UserProvider>
        <CartProvider>
          <SingleProductProvider>
            <SearchProvider>
              <Router>
                <Routes>
                  <Route path="/" element={<Home />} />
                  <Route path="/about" element={<About />} />
                  <Route path="/profile" element={<Profile />} />
                  <Route path="/sign-in" element={<SignIn />} />
                  <Route path="/sign-up" element={<SignUp />} />
                  <Route path="/forget-password" element={<ForgetPassword />} />
                  <Route path="/contact-us" element={<ContactUs />} />
                  <Route path="/faq" element={<FAQ />} />
                  <Route path="/cart" element={<Cart />} />
                  <Route path="/single-product" element={<SingleProduct />} />
                  <Route path="/searched" element={<Searched />} />
                  <Route path="/admin" element={<Admin />} />
                  <Route path="/admin-admin" element={<AdminAdmin />} />
                  <Route path="/admin-user" element={<AdminUser />} />
                  <Route path="/admin-product" element={<AdminProduct />} />
                  <Route
                    path="/PTransaction"
                    element={<ProfileTransaction />}
                  />
                  <Route path="/SOrders" element={<SeeOrders />} />
                  <Route path="/checkout" element={<Checkout />} />
                </Routes>
              </Router>
            </SearchProvider>
          </SingleProductProvider>
        </CartProvider>
      </UserProvider>
    </>
  );
}

export default App;
