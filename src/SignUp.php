<?php
header("Access-Control-Allow-Origin: *"); //add this CORS header to enable any domain to send HTTP requests to these endpoints:
$host = "localhost"; 
$user = "root";
$password = "";
$dbname = "ecommerce";
$id = '';
$con = mysqli_connect($host, $user, $password, $dbname);
$method = $_SERVER['REQUEST_METHOD'];
if (!$con) {
  die("Connection failed: " . mysqli_connect_error());
// $result = null;
}
switch ($method) {
    case 'POST':
        $fname=htmlspecialchars($_POST['fname']);
        $lname=htmlspecialchars($_POST['lname']);
        $email=htmlspecialchars($_POST['email']);
        $pass=htmlspecialchars($_POST['password']);
        $phone=htmlspecialchars($_POST['phoneNum']);
        $city=htmlspecialchars($_POST['city']);
        $zip=htmlspecialchars($_POST['zipCode']);
        $state=htmlspecialchars($_POST['state']);
        $sql = "INSERT INTO users (`UserFname`, `UserLname`, `UserEmail`,`UserPassword`, `UserCity`, `UserState`, `UserZipCode`, `UserPhoneNo`)
               VALUES ('$fname', '$lname','$email','$pass', '$city', '$state', '$zip', '$phone')";
        $result = mysqli_query($con, $sql);
      break;
}
// run SQL statement

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