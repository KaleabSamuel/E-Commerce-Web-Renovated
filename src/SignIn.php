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

    switch ($method) {
      case 'POST':
        $email=$_POST['email'];
        $password=$_POST['password'];
        $sql = "SELECT * FROM users where UserEmail = '$email' and UserPassword = '$password'";
        break;
  }

    $result = mysqli_query($con, $sql);

    if (!$result) {
      http_response_code(404);
      die(mysqli_error($con));
    }if($result){
        $con->close();
        header("location: http://localhost:3000/");
    }
    $con->close();
    ?>
