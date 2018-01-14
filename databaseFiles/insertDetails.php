<?php 
// Including database connections
require_once 'database_connections.php';
// Fetching and decoding the inserted data
$data = json_decode(file_get_contents("php://input")); 
// Escaping special characters from submitting data & storing in new variables.
$id = mysqli_real_escape_string($con, $data->id);
$username = mysqli_real_escape_string($con, $data->username);
$password = mysqli_real_escape_string($con, $data->password);
$fullname = mysqli_real_escape_string($con, $data->fullname);
$city = mysqli_real_escape_string($con, $data->city);
$status = mysqli_real_escape_string($con, $data->status);

// mysqli insert query
$query = "INSERT into crud_user (crud_username,crud_password,crud_fullname,crud_city,crud_status) VALUES ('$username','$password','$fullname','$city','$status')";
// Inserting data into database
mysqli_query($con, $query);
echo true;
?>