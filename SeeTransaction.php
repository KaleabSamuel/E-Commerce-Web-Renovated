<?php
header("Access-Control-Allow-Origin: *"); //add this CORS header to enable any domain to send HTTP requests to these endpoints:
$host = "localhost"; 
$user = "root";
$password = "";
$dbname = "ecommerce";
$id = '';
$con = mysqli_connect($host, $user, $password,$dbname);
$method = $_SERVER['REQUEST_METHOD'];
if (!$con) {
  die("Connection failed: " . mysqli_connect_error());
}
switch ($method) {
    case 'GET':
        $uid=$_GET['Ptransaction'];
        $sql = "SELECT * FROM `transaction` WHERE $uid=`userId`";
      break;
}
// run SQL statement
$result = mysqli_query($con,$sql);
// die if SQL statement failed
if (!$result) {
  http_response_code(404);
  die(mysqli_error($con));
}if($result){
    echo "<h2> Your Transactions are Listed Bellow</h2>";
    if ($method == 'GET') {
        echo "<table border='1'>
        <tr>
        <th>Transaction Id</th>
        <th>Product Id</th>
        <th>Quantitiy</th>
        <th>Total Price</th>
        <th>Transaction Date</th>
        <th>CatagoryID</th>
        <th>User Id</th>
        </tr>";
        while($i = mysqli_fetch_array($result)) {
            echo "<tr>";

            echo "<td>" . $i['transactionID'] . "</td>";
          
            echo "<td>" . $i['productId'] . "</td>";
          
            echo "<td>" . $i['quantity'] . "</td>";
          
            echo "<td>" . $i['totalprice'] . "</td>";

            echo "<td>" . $i['date'] . "</td>";

            echo "<td>" . $i['CatagoryID'] . "</td>";

            echo "<td>" . $i['userId'] . "</td>";

            echo "</tr>";             
         }
         echo "</table>";
     }else {
        echo mysqli_affected_rows($con);
    }
}
$con->close();
?>