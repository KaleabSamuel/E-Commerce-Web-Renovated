import React from "react";
import { Link } from "react-router-dom";
import { useState, useEffect } from "react";
import UserWide from "../components/UserWide";
const yourProfile=()=>{

  const [users, setUsers] = useState([]);

  useEffect(() => {
    fetchData();
  }, []);

  const fetchData = async () => {
    fetch("http://localhost/ecom/SignIn.php")
      .then((response) => {
        return response.json();
      })
      .then((result) => {
        setUsers(result);
      });
  };

  return(
    <>
    {/* <div>
      <div className="main-header">
        <div className="container py_1">
          <Link to="/">
            <img src={Logo} alt="Logo" className="logo" />
          </Link>
          <div className="header-container">
            <Link to="/profile">
              <FaRegUserCircle size={30} style={{ marginTop: "5px" }} />
            </Link>
          </div>
        </div>
      </div> */}
      {/* <div className="main-nav">
        <div className="container py_0">
          <ul>
            <li>
              <Link to="/admin">Transaction info</Link>
            </li>
            <li>
              <Link to="/admin-admin">Admins</Link>
            </li>
            <li>
              <Link to="/admin-user">Users</Link>
            </li>
            <li>
              <Link to="/admin-product">Products</Link>
            </li>
          </ul>
        </div>
      </div> */}
      <div className="users-list">
        {users.map((person)=>{
           return <UserWide key={person.UserID} person={person} />
        })}
      </div>
    {/* </></div> */}
    </>
  )
}
export default yourProfile;