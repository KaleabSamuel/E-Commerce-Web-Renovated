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
        $uid=$_GET["Porder"];
        $sql = "SELECT * FROM `orders` WHERE $uid=`OrderUserID`";
      break;
}
// run SQL statement
$result = mysqli_query($con,$sql);
// die if SQL statement failed
if (!$result) {
  http_response_code(404);
  die(mysqli_error($con));
}if($result){
    echo "<h2> Your Order History are Listed Bellow</h2>";
    if ($method == 'GET') {
        echo "<table border='1'>
        <tr>
        <th>orderID</th>
        <th>OrderUserID</th>
        <th>OrderAmount</th>
        <th>OrderShipName</th>
        <th>OrderShipAddr</th>
        <th>OrderShipAddr2</th>
        <th>OrderCity</th>
        <th>OrderState</th>
        <th>OrderCountry</th>
        <th>OrderPhoneNo</th>
        <th>OrderTax</th>
        <th>OrderEmail</th>
        <th>OrderZipCode</th>
        <th>OrderDate</th>
        <th>OrderIsShipped</th>
        <th>OrderTrackStatus</th>
        </tr>";
        while($i = mysqli_fetch_array($result)) {
            echo "<tr>";

            echo "<td>" . $i['orderID']. "</td>";
          
            echo "<td>" . $i['OrderUserID']. "</td>";
          
            echo "<td>" . $i['OrderAmount']. "</td>";
          
            echo "<td>" . $i['OrderShipName']. "</td>";

            echo "<td>" . $i['OrderShipAddr'] . "</td>";

            echo "<td>" . $i['OrderShipAddr2'] . "</td>";

            echo "<td>" . $i['OrderCity'] . "</td>";

            echo "<td>" . $i['OrderCountry'] . "</td>";

            echo "<td>" . $i['OrderPhoneNo'] . "</td>";

            echo "<td>" . $i['OrderTax'] . "</td>";

            echo "<td>" . $i['OrderEmail'] . "</td>";

            echo "<td>" . $i['OrderZipCode'] . "</td>";

            echo "<td>" . $i['OrderDate'] . "</td>";

            echo "<td>" . $i['OrderIsShipped'] . "</td>";

            echo "<td>" . $i['OrderTrackStatus'] . "</td>";

            echo "</tr>";             
         }
         echo "</table>";
     }else {
        echo mysqli_affected_rows($con);
    }
}
$con->close();
?>