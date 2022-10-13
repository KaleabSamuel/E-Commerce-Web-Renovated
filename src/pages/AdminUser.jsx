import { Link } from "react-router-dom";
import Logo from "../images/logo1.png";
import { FaRegUserCircle } from "react-icons/fa";
import { useState, useEffect } from "react";
import UserWide from "../components/UserWide";

const AdminUser = () => {
  const [users, setUsers] = useState([]);

  useEffect(() => {
    fetchData();
  }, []);

  const fetchData = async () => {
    fetch("http://localhost/ecom/getUsers.php")
      .then((response) => {
        return response.json();
      })
      .then((result) => {
        setUsers(result);
      });
  };

  return (
    <div>
      <div className="main-header">
        <div className="container py_1">
          <Link to="/">
            <img src={Logo} alt="Logo" className="logo" />
          </Link>
        </div>
      </div>
      <div className="main-nav">
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
      </div>
      <div className="users-list">
        {users.map((person)=>{
           return <UserWide key={person.UserID} person={person} />
        })}
      </div>
    </div>
  )
}

export default AdminUser