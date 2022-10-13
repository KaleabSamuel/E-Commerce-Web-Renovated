import { useState, useEffect, useContext } from "react";
import CartContext from "../context/CartContext";
import SingleProductContext from "../context/SingleProductContext";
import { Link } from "react-router-dom";

const Card = ({ item }) => {
  const [description, setDescription] = useState("");
  const [image, setImage] = useState();

  const { addCart } = useContext(CartContext);
  const { addSingleProduct } = useContext(SingleProductContext);

  useEffect(() => {
    if (item.description.length > 100) {
      setDescription(`${item.description.substr(0, 90)}...`);
    } else {
      setDescription(item.description);
    }
    if (item.image) setImage(item.image);
    else setImage(item.images[0]);
  });

  return (
    <div>
      <Link
        to="/single-product"
        className="card"
        onClick={() => {
          addSingleProduct(item);
        }}
      >
        <div className="to-separate" style={{height:'300px'}}>
          <div className="img-display">
            <img src={image} alt="image" />
          </div>
          <p style={{textAlign:'left'}}>{description}</p>
        </div>
          <h2 style={{ fontWeight: "normal", fontSize: "20px" }}>
            <sup>$</sup>
            {item.price}
          </h2>
        <div className="cart">
          <button
            onClick={(e) => {
              e.preventDefault();
              addCart(item);
            }}
          >
            Add To Cart
          </button>
        </div>
      </Link>
    </div>
  );
};

export default Card;
