import { useContext, useEffect, useRef } from "react";
import SingleProductContext from "../context/SingleProductContext";
import CartContext from "../context/CartContext";
import Navbar from "../components/Navbar";
import Footer from "../components/Footer";

const SingleProduct = () => {
  const { singleProduct } = useContext(SingleProductContext);
  const { addCart } = useContext(CartContext);
  const imgValue = useRef();
  let cur = 0;

  useEffect(()=>{
    if(singleProduct.images.length < 2){
      document.querySelector('.btn-prev').style.display = 'none'
      document.querySelector('.btn-next').style.display = 'none'
    }
  })

  return (
    <div>
      <Navbar />
      <div className="container single-product">
        <div className="large-img-display">
          <button
            className="btn-prev"
            onClick={() => {
              cur = (cur - 1)  < 0 ? singleProduct.images.length -1 : cur - 1
              imgValue.current.src = singleProduct.images[cur];
            }}
          >
            &lt;
          </button>
          <button
            className="btn-next"
            onClick={() => {
              cur = cur + 1 > singleProduct.images.length - 1 ? 0 : cur + 1;
              imgValue.current.src = singleProduct.images[cur];
            }}
          >
            &gt;
          </button>
          <img src={singleProduct.images[0]} alt="" ref={imgValue} />
        </div>
        <div className="information">
          {singleProduct.title}
          <h2>US${singleProduct.price}</h2>
          <hr style={{width:'100%', border: '1px dashed #ccc'}}/>
          <button
            onClick={(e)=>{
              e.preventDefault()
              addCart(singleProduct);
            }}
          >
            Add To Cart
          </button>
          Earn {Math.round(singleProduct.price)} ANYWHERE Points
          <h2>Description</h2>
          {singleProduct.description}
        </div>
      </div>
      <Footer />
    </div>
  );
};

export default SingleProduct;