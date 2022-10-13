import { useState, useEffect, useContext } from "react";
import CartContext from "../context/CartContext";
import SingleProductContext from "../context/SingleProductContext";
import { Link } from "react-router-dom";

const CardWide = ({ item }) => {
  const [image, setImage] = useState();
  const [quantity, setQuantity] = useState(1);
  const { removeCart } = useContext(CartContext);
  const { addSingleProduct } = useContext(SingleProductContext);

  useEffect(() => {
    if (item.image) setImage(item.image);
    else setImage(item.images[0]);
  });

  return (
    <div>
      <Link 
      to="/single-product"
      className="card-wide"
      onClick={() => {
        addSingleProduct(item);
      }}>
        <div style={{ width: "100%" }} className="card-wide-content">
        <div  className="wide-img-display">
            <img src={image} alt="image" />
          </div>
          <div className="another-info">
            <div className="another-info-top">
              <div className="item-title">
                <p style={{ display: "block" }}>{item.title}</p>
              </div>
              <div className="item-another-info">
                <h2>
                  <sup>$</sup>
                  {item.price}
                </h2>
                <h2>{quantity}</h2>
                <h2>
                  <sup>$</sup>
                  {item.price * quantity}
                </h2>
              </div>
            </div>
            <button
              onClick={(e) => {
                e.preventDefault();
                removeCart(item);
              }}
            >
              Remove
            </button>
          </div>
        </div>
      </Link>
    </div>
  );
};

export default CardWide;
