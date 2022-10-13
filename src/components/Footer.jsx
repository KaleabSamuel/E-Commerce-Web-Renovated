import { Link } from "react-router-dom";
import {
  FaMapMarkerAlt,
  FaFacebookF,
  FaInstagram,
  FaTwitter,
  FaYoutube,
  FaPinterestP,
  FaSnapchatGhost,
  FaTiktok,
  FaApple,
  FaAndroid,
} from "react-icons/fa";

const Footer = () => {
  return (
    <div className="footer-container">
      <div className="footer">
        <div className="info-links">
          <div className="info-link-top">
            <div className="company-info">
              <h6>COMPANY INFO</h6>
              <ul className="company-info-link">
                <li>
                  <Link to="/about">About ANYWHERE</Link>
                </li>
                <li>
                  <Link to="/about">Affiliate</Link>
                </li>
                <li>
                  <Link to="/about">Fashion Blogger</Link>
                </li>
                <li>
                  <Link to="/about">Social Responsibility</Link>
                </li>
              </ul>
            </div>
            <div className="help-and-support">
              <h6>HELP & SUPPORT</h6>
              <ul className="help-and-support-link">
                <li>
                  <Link to="/contact-us">Shopping info</Link>
                </li>
                <li>
                  <Link to="/contact-us">Returns</Link>
                </li>
                <li>
                  <Link to="/contact-us">How to order</Link>
                </li>{" "}
                <li>
                  <Link to="/contact-us">How to track</Link>
                </li>
                <li>
                  <Link to="/contact-us">Size guide</Link>
                </li>
                <li>
                  <Link to="/contact-us">ANYWHERE VIP</Link>
                </li>
              </ul>
            </div>
            <div className="customer-care">
              <h6>CUSTOMER CARE</h6>
              <ul className="customer-care-link">
                <li>
                  <Link to="/contact-us">Contact us</Link>
                </li>
                <li>
                  <Link to="/contact-us">Payment method</Link>
                </li>
                <li>
                  <Link to="/contact-us">Bonus point</Link>
                </li>
                <li>
                  <Link to="/contact-us">Klarna</Link>
                </li>
                <li>
                  <Link to="/faq">FAQ</Link>
                </li>
              </ul>
            </div>
          </div>
          <div className="info-link-bottom">
            <p>&copy;2022 ANYWHERE All Rights Reserverd</p>
            <p>
              <Link to="/">Privacy Center</Link> |
              <Link to="/"> Privacy & Cookie Policy</Link> |
              <Link to="/"> Manage Cookies</Link> |
              <Link to="/"> Terms & Conditions</Link> |
              <Link to="/"> Copyright Notice</Link> |
              <Link to="/"> Imprint</Link> |
              <Link to="/">
                {" "}
                <FaMapMarkerAlt />
                Ethiopia
              </Link>
            </p>
          </div>
        </div>
        <div className="footer-form">
          <div className="footer-icons">
            <div className="find-us">
              <h6>FIND US ON</h6>
              <div className="find-us-icons">
                <a href="http://facebook.com">
                  <FaFacebookF size={25} />
                </a>
                <a href="http://instagram.com">
                  <FaInstagram size={25} />
                </a>
                <a href="http://twitter.com">
                  <FaTwitter size={25} />
                </a>
                <a href="http://youtube.com">
                  <FaYoutube size={25} />
                </a>
                <a href="http://pinterest.com">
                  <FaPinterestP size={25} />
                </a>
                <a href="http://snapchat.com">
                  <FaSnapchatGhost size={25} />
                </a>
                <a href="http://tiktok.com">
                  <FaTiktok size={25} />
                </a>
              </div>
            </div>
            <div className="app">
              <h6>APP</h6>
              <a href="https://www.apple.com/store">
                <FaApple size={25} />
              </a>
              <a href="https://play.google.com/store/games">
                <FaAndroid size={25} />
              </a>
            </div>
          </div>
          <h6>SIGN UP FOR ANYWHERE NEWS</h6>
          <form action="" className="form-subscribe">
            <input
              type="email"
              name="email"
              id="email"
              placeholder="Your Email Address"
              className="email-subscribe"
              style={{
                height: "32px",
                border: "solid #fff 1px",
                borderRadius: "10px",
              }}
            />
            <button type="submit" className="btn-subscribe">
              SUBSCRIBE
            </button>
            <p>
              By clicking the SUBSCRIBE button, you are agreeing to our{" "}
              <a href="#">Privacy & Cookie Policy</a>
            </p>
          </form>
        </div>
      </div>
    </div>
  );
};

export default Footer;
