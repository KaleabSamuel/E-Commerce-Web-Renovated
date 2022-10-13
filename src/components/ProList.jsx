const ProList = ({ p }) => {
  return (
    <tr>
      <td><h2 className="product-name">{p.productName}</h2></td>
      <td><h3 className="product-quantity">{p.quantity}</h3></td>
      <td><h3 className="product-total">$ {p.total}</h3></td>
    </tr>
  );
};

export default ProList;
