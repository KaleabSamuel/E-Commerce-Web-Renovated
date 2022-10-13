import { XAxis, YAxis, Tooltip, AreaChart, Area } from "recharts";
import { Link } from "react-router-dom";
import Logo from "../images/logo1.png";
import { FaRegUserCircle } from "react-icons/fa";
import { useState, useEffect } from "react";
import ProList from "../components/ProList";

const Admin = () => {
  const [pro, setPro] = useState([]);
  const [proL, setProL] = useState([]);
  const [byCategory, setByCategory] = useState([]);
  const [yearlyIncome, setYearlyIncome] = useState([]);
  const [monthlyIncome, setMonthlyIncome] = useState([]);
  const [weeklyIncome, setWeeklyIncome] = useState([]);
  const [dailyIncome, setDailyIncome] = useState([]);

  useEffect(() => {
    fetchData();
  }, []);

  const fetchData = async () => {
    fetch("http://localhost/ecom/getTransaction.php")
      .then((response) => {
        return response.json();
      })
      .then((result) => {
        setPro(result);
      });

    fetch("http://localhost/ecom/monthlyProduct.php")
      .then((response) => {
        return response.json();
      })
      .then((result) => {
        setProL(result);
        console.log(result);
      });

    fetch("http://localhost/ecom/getTransactionByCatagory.php")
      .then((response) => {
        return response.json();
      })
      .then((result) => {
        setByCategory(result);
      });

    fetch("http://localhost/ecom/yearlyIncome.php")
      .then((response) => {
        return response.json();
      })
      .then((result) => {
        setYearlyIncome(result);
      });

    fetch("http://localhost/ecom/monthlyIncome.php")
      .then((response) => {
        return response.json();
      })
      .then((result) => {
        setMonthlyIncome(result);
      });

    fetch("http://localhost/ecom/weeklyIncome.php")
      .then((response) => {
        return response.json();
      })
      .then((result) => {
        setWeeklyIncome(result);
      });

    fetch("http://localhost/ecom/dailyIncome.php")
      .then((response) => {
        return response.json();
      })
      .then((result) => {
        setDailyIncome(result);
      });

    console.log(proL);
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
      <div className="container income-report">
        <div className="yearly-income">
          <h1>Yearly Income</h1>
          <h2>$ {yearlyIncome.map((y) => (y.total === null ? 0 : y.total))}</h2>
        </div>
        <div className="monthly-income">
          <h1>Monthly Income</h1>
          <h2>
            $ {monthlyIncome.map((y) => (y.total === null ? 0 : y.total))}
          </h2>
        </div>
        <div className="weekly-income">
          <h1>Weekly Income</h1>
          <h2>$ {weeklyIncome.map((y) => (y.total === null ? 0 : y.total))}</h2>
        </div>
        <div className="daily-income">
          <h1>Daily Income</h1>
          <h2>$ {dailyIncome.map((y) => (y.total === null ? 0 : y.total))}</h2>
        </div>
      </div>
      <div className="container">
        <div className="transaction-by-month">
          <h2>Chart Showing Income by Month</h2>
          <AreaChart
            width={1300}
            height={400}
            data={pro}
            margin={{ top: 10, right: 30, left: 0, bottom: 0 }}
          >
            <defs>
              <linearGradient id="colorUv" x1="0" y1="0" x2="0" y2="1">
                <stop
                  offset="5%"
                  stopColor="var(--primary-color)"
                  stopOpacity={0.8}
                />
                <stop
                  offset="95%"
                  stopColor="var(--primary-color)"
                  stopOpacity={0}
                />
              </linearGradient>
            </defs>
            <XAxis dataKey="month" />
            <YAxis domain={[0, (dataMax) => dataMax + 1000]} />
            {/* <CartesianGrid strokeDasharray="3 3" /> */}
            <Tooltip />
            {/* <Legend /> */}
            <Area
              type="monotone"
              dataKey="total"
              stroke="var(--primary-color)"
              fillOpacity={1}
              fill="url(#colorUv)"
            />
          </AreaChart>
        </div>
        <div className="transaction-by-category">
          <h2>Chart Showing Income by Category</h2>
          <AreaChart
            width={1300}
            height={400}
            data={byCategory}
            margin={{ top: 10, right: 30, left: 0, bottom: 0 }}
          >
            <defs>
              <linearGradient id="colorUv" x1="0" y1="0" x2="0" y2="1">
                <stop
                  offset="5%"
                  stopColor="var(--primary-color)"
                  stopOpacity={0.8}
                />
                <stop
                  offset="95%"
                  stopColor="var(--primary-color)"
                  stopOpacity={0}
                />
              </linearGradient>
            </defs>
            <XAxis dataKey="CatagoryName" />
            <YAxis domain={[0, (dataMax) => dataMax + 1000]} />
            {/* <CartesianGrid strokeDasharray="3 3" /> */}
            <Tooltip />
            {/* <Legend /> */}
            <Area
              type="monotone"
              dataKey="total"
              stroke="var(--primary-color)"
              fillOpacity={1}
              fill="url(#colorUv)"
            />
          </AreaChart>
        </div>
        <div className="list-products">
          <h1>List of Product of the Monthly Purchased</h1>
          <table style={{ width: "100%" }}>
            <thead style={{ alignItems: "center" }}>
              <td>
                <h3 className="product-name">Product Name</h3>
              </td>
              <td>
                <h3 className="product-quantity">Quantity</h3>
              </td>
              <td>
                <h3 className="product-total">Total Price</h3>
              </td>
            </thead>
            {proL.map((p) => {
              return <ProList key={p.productName} p={p} />;
            })}
          </table>
        </div>
      </div>
    </div>
  );
};

export default Admin;
