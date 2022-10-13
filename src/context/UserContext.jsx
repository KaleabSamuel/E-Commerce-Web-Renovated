import { createContext, useState } from "react";

const UserContext = createContext();

export const UserProvider = ({ children }) => {
  const [user, setUser] = useState();

  const addUser = (person) =>{
    setUser(person)
  }

  return (
    <UserContext.Provider
      value={{
        user,
        addUser,
      }}
    >
      {children}
    </UserContext.Provider>
  );
};

export default UserContext