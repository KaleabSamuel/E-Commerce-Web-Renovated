import Navbar from "../components/Navbar";
import Product from "../components/Product";
import Footer from "../components/Footer";
import ShowCase from "../components/ShowCase";
import { useState, useEffect, useContext, useRef } from "react";
import SearchContext from "../context/SearchContext";
import { FaArrowUp } from "react-icons/fa";
import { Link } from "react-router-dom";

const Home = () => {
  const [pro, setPro] = useState([]);
  const [laptops, setLaptops] = useState([]);
  const [womensDress, setWomensDress] = useState([]);
  const [furnitures, setFurnitures] = useState([]);
  const { addAllCategory, addCategory } = useContext(SearchContext);
  const [images, setImages] = useState([]);
  let current = 0;
  let buttonToTop = useRef();

  useEffect(() => {
    fetchFeedback();
    window.onscroll = () => {
      if (
        document.body.scrollTop > 100 ||
        document.documentElement.scrollTop > 100
      ) {
        buttonToTop.current.style.display = "block";
      } else {
        buttonToTop.current.style.display = "none";
      }
    };
    //showcase.current.style.backgroundImage = `url(${pro[current].thumbnail})`;

    // const timer = setInterval(() => sliderFun(1), 2000);
    // return () => clearInterval(timer);
  }, []);

  const fetchFeedback = async () => {
    const response = await fetch(`https://dummyjson.com/products/?limit=100`);
    const data = await response.json();
    setPro(data.products);

    data.products.map((pro) => {
      setImages([...images, pro.thumbnail]);
    });

    const responseLaptops = await fetch(
      `https://dummyjson.com/products/category/laptops`
    );
    const dataLaptops = await responseLaptops.json();
    setLaptops(dataLaptops.products);

    const responseWomensDress = await fetch(
      `https://dummyjson.com/products/category/womens-dresses`
    );
    const dataWomensDress = await responseWomensDress.json();
    setWomensDress(dataWomensDress.products);

    const responseFurniture = await fetch(
      `https://dummyjson.com/products/category/furniture`
    );
    const dataFurniture = await responseFurniture.json();
    setFurnitures(dataFurniture.products);
    const catResponse = await fetch(
      `https://dummyjson.com/products/categories`
    );
    const cat = await catResponse.json();
    addAllCategory(cat);
  };

  // const sliderFun = (n) => {
  //   current += n;
  //   if (current > pro.length - 1) current = 0;
  //   else {
  //     if (current < 0) current = pro.length - 1;
  //   }
  //   showcase.current.style.backgroundImage = `url(${images[current]})`;
  // };

  return (
    <>
      <a id="top"></a>
      <Navbar />
      <ShowCase value={pro} />
      <div className="container">
        <h1>Get Your Products Here</h1>
      </div>
      <Product value={pro} />
      <div className="container">
        <h1 style={{ marginTop: "50px" }}>Categories</h1>
        <div className="category-display">
          <Link
            to="/searched"
            onClick={() => {
              addCategory("automotive");
            }}
          >
            Automotive
          </Link>
          <Link
            to="/searched"
            onClick={() => {
              addCategory("fragrances");
            }}
          >
            Fragrances
          </Link>
          <Link
            to="/searched"
            onClick={() => {
              addCategory("Furniture");
            }}
          >
            Furniture
          </Link>
          <Link
            to="/searched"
            onClick={() => {
              addCategory("Groceries");
            }}
          >
            Groceries
          </Link>
          <Link
            to="/searched"
            onClick={() => {
              addCategory("Home-Decoration");
            }}
          >
            Home Decoration
          </Link>
          <Link
            to="/searched"
            onClick={() => {
              addCategory("Laptops");
            }}
          >
            Laptops
          </Link>
          <Link
            to="/searched"
            onClick={() => {
              addCategory("Lighting");
            }}
          >
            Lighting
          </Link>
          <Link
            to="/searched"
            onClick={() => {
              addCategory("Mens-Shoes");
            }}
          >
            Mens Shoes
          </Link>
          <Link
            to="/searched"
            onClick={() => {
              addCategory("Mens-Watches");
            }}
          >
            Mens Watches
          </Link>
          <Link
            to="/searched"
            onClick={() => {
              addCategory("Motorcycle");
            }}
          >
            Motorcycle
          </Link>
          <Link
            to="/searched"
            onClick={() => {
              addCategory("Skincare");
            }}
          >
            Skincare
          </Link>
          <Link
            to="/searched"
            onClick={() => {
              addCategory("Smartphones");
            }}
          >
            Smartphones
          </Link>
          <Link
            to="/searched"
            onClick={() => {
              addCategory("Sunglasses");
            }}
          >
            Sunglasses
          </Link>
          <Link
            to="/searched"
            onClick={() => {
              addCategory("Tops");
            }}
          >
            Tops
          </Link>
          <Link
            to="/searched"
            onClick={() => {
              addCategory("Womens-Bags");
            }}
          >
            Womens Bags
          </Link>
          <Link
            to="/searched"
            onClick={() => {
              addCategory("Womens-Dresses");
            }}
          >
            Womens Dresses
          </Link>
          <Link
            to="/searched"
            onClick={() => {
              addCategory("Womens-Jewellery");
            }}
          >
            Womens Jewellery
          </Link>
          <Link
            to="/searched"
            onClick={() => {
              addCategory("Womens-Shoes");
            }}
          >
            Womens Shoes
          </Link>
          <Link
            to="/searched"
            onClick={() => {
              addCategory("Womens-Watches");
            }}
          >
            Womens Watches
          </Link>
        </div>
        <h1>Laptops</h1>
        <Product value={laptops} />
        <h1 style={{ marginTop: "50px" }}>Womens Dresses</h1>
        <Product value={womensDress} />
        <h1 style={{ marginTop: "50px" }}>Furnitures</h1>
        <Product value={furnitures} />
        <a href="#top" className="go-to-top-btn" ref={buttonToTop}>
          <FaArrowUp />
        </a>
      </div>
      <Footer />
    </>
  );
};

export default Home;
