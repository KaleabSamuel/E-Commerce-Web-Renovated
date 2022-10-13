import { createContext, useState } from "react";

const CartContext = createContext();

export const CartProvider = ({ children }) => {
  const [cart, setCart] = useState([]);

  const addCart = (item) =>{
    setCart([...cart,item])
  }

  const removeCart = (item) => {
    setCart(cart.filter((pro) => item.id !== pro.id))
    //console.log(cart)
  }

  return (
    <CartContext.Provider
      value={{
        cart,
        addCart,
        removeCart,
      }}
    >
      {children}
    </CartContext.Provider>
  );
};

export default CartContext