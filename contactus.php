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
    case 'POST':
        $fn=htmlspecialchars($_POST['fnameContact']);
        $ln=htmlspecialchars($_POST['lnameContact']);
        $eml=htmlspecialchars($_POST['ContactUsemail']);
        $msg=htmlspecialchars($_POST['ContactUsmsg']);
        $sql = "INSERT INTO contactsupport (`fname`, `lname`, `email`,`message`)
               VALUES ('$fn', '$ln','$eml','$msg')";
      break;
}
// run SQL statement
$result = mysqli_query($con,$sql);
// die if SQL statement failed
if (!$result) {
  http_response_code(404);
  die(mysqli_error($con));
}if($result){
    $con->close();
    header("location: http://localhost:3000/");
}
$con->close();
?>