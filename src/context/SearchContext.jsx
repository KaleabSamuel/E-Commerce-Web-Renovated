import { createContext, useState } from "react";

const SearchContext = createContext();

export const SearchProvider = ({ children }) => {
  const [search, setSearch] = useState('');
  const [category, setCategory] = useState('');
  const [allCategory, setAllCategory] = useState([]);

  const addSearch = (item) =>{
    setSearch(item)
  }

  const addCategory = (cat) =>{
    setCategory(cat)
    if(cat === 'All')
      setCategory('')
  }

  const addAllCategory = (all) =>{
    setAllCategory(all)
  }

  return (
    <SearchContext.Provider
      value={{
        search,
        category,
        allCategory,
        addSearch,
        addCategory,
        addAllCategory,
      }}
    >
      {children}
    </SearchContext.Provider>
  );
};

export default SearchContext