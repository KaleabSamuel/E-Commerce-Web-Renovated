import SearchContext from "../context/SearchContext";
import { useContext, useState, useEffect } from "react";
import Card from "../components/Card";
import Navbar from "../components/Navbar";
import Footer from "../components/Footer";

const Searched = () => {
  const { search, category } = useContext(SearchContext);
  const [pro, setPro] = useState([]);
  useEffect(() => {
    fetchFeedback()
  }, [])

  
  const fetchFeedback = async () => {
    const response = await fetch(`https://dummyjson.com/products/?limit=100`)
    const data = await response.json()
    setPro(data.products.filter((pro) => pro.title.toLowerCase().includes(search.toLowerCase()) && pro.category.toLowerCase().includes(category.toLowerCase())))
    console.log(search);
  }


  return (
    <div>
      <Navbar />
      <div className="container">
        <div className="search-container">
          {pro.map((item) => (
              <Card key={item.id} item={item} />
            ))}
        </div>
      </div>
      <Footer />
    </div>
  )
}

export default Searched