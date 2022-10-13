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
      if(isset($_POST['submit']) && $_POST['key'] && $_POST['reset'])
      {
        $email=$_POST['email'];
        $pass=$_POST['Newpassword'];
        $select=mysql_query("update userS set UserPassword='$pass' where UserEmail='$email'");
      }
        $sql = $select
        $result = mysqli_query($con, $sql);
      break;
    }
  }

if (!$result) {
  http_response_code(404);
  die(mysqli_error($con));
}if($result){
    $con->close();
    header("location: http://localhost:3000/");
}
$con->close();
?>

// function forgotPassword($forgotpassword, $newpassword){
//     $result = mysql_query("UPDATE `users` SET `UserPassword` = '$newpassword' WHERE `UserEmail` = '$forgotpassword'");
//     if ($result) {
//     return true;
//     }
//     else
//     {
//     return false;
//     }
// }
// function hashSSHA($password) {
//     $salt = sha1(rand());
//     $salt = substr($salt, 0, 10);
//     $encrypted = base64_encode(sha1($password . $salt, true) . $salt);
//     $hash = array("salt" => $salt, "encrypted" => $encrypted);
//     return $hash;
// }
// function isUserExisted($email) {
//     $result = mysql_query("SELECT UserEmail from users WHERE UserEmail = '$email'");
//     $no_of_rows = mysql_num_rows($result);
//     if ($no_of_rows > 0) {
       
//         return true;
//     } else {
        
//         return false;
//     }
// }

// $email = $_POST['email'];
// $newpassword = $_POST['Newpassword'];
// $hash = hashSSHA($newpassword);
// $encrypted_password = $hash["encrypted"];
// $salt = $hash["salt"];
// if (isUserExisted($email)) {
//         $user = forgotPassword($email);
//     if ($user) {
    
// }
// else {
    
// }
    
// }
//    else {
    
// }
?>