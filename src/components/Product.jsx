import Card from "./Card";

const Product = ({ value }) => {
  var ReactDOM = require("react-dom");

  const btnPrev = (e) => {
    let box = ReactDOM.findDOMNode(e.target).parentNode.nextSibling.nextSibling;
    let width = box.clientWidth;
    box.scrollLeft = box.scrollLeft - width / 2;
  };
  const btnNext = (e) => {
    let box = ReactDOM.findDOMNode(e.target).parentNode.nextSibling;
    let width = box.clientWidth;
    box.scrollLeft = box.scrollLeft + width / 2;
  };

  return (
    <div className="pro-container">
      <button className="pre-btn" onClick={(event) => btnPrev(event)}>
        <p>&lt;</p>
      </button>
      <button className="next-btn" onClick={(event) => btnNext(event)}>
        <p>&gt;</p>
      </button>
      <div className="product-container">
        {value.map((item) => (
          <Card key={item.id} item={item} />
        ))}
      </div>
    </div>
  );
};
export default Product;