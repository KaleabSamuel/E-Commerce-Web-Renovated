import React from "react";

const AdminPro = ({ pro }) => {
  return (
    <div className="container user-wide">
      <h2>Product ID: {pro.ProductID}</h2>
      <table style={{ width: "100%" }}>
        <tr>
          <td style={{ width: "20%" }}>
            <img
              src={pro.ProductThumb}
              alt="product Image"
              style={{ width: "200px", height: "auto" }}
            />
          </td>
          <td>
            <table>
              <tr>
                <td>
                  <h3>Product Name: {pro.ProductName}</h3>
                </td>
              </tr>
              <tr>
                <td>
                  <h3>Price: {pro.ProductPrice}</h3>
                </td>
              </tr>
              <tr>
                <td>
                  <h3>Category: {pro.ProductCatagoryName}</h3>
                </td>
              </tr>
              <tr>
                <td>
                  <h3>Stock: {pro.stock}</h3>
                </td>
              </tr>
              <tr>
                <td>
                  <h3>Brand: {pro.brand}</h3>
                </td>
              </tr>
              <tr>
                <td>
                  <h3>Rating: {pro.rating}</h3>
                </td>
              </tr>
            </table>
          </td>
        </tr>
      </table>
    </div>
  );
};

export default AdminPro;
