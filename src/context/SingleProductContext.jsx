import { createContext, useState } from "react";

const SingleProductContext = createContext();

export const SingleProductProvider = ({ children }) => {
  const [singleProduct, setSingleProduct] = useState();

  const addSingleProduct = (item) => {
    setSingleProduct(item);
  };

  return (
    <SingleProductContext.Provider
      value={{
        singleProduct,
        addSingleProduct,
      }}
    >
      {children}
    </SingleProductContext.Provider>
  );
};

export default SingleProductContext;
