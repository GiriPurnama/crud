<?php 
// Including database connections
require_once 'database_connections.php';
// Fetching the updated data & storin in new variables
$data = json_decode(file_get_contents("php://input")); 
// Escaping special characters from updated data
$id = mysqli_real_escape_string($con, $data->id);
$username = mysqli_real_escape_string($con, $data->username);
$password = mysqli_real_escape_string($con, $data->password);
$fullname = mysqli_real_escape_string($con, $data->fullname);
$city = mysqli_real_escape_string($con, $data->city);
$status = mysqli_real_escape_string($con, $data->status);
// mysqli query to insert the updated data
$query = "UPDATE crud_user SET crud_username='$username',crud_password='$password',crud_fullname='$fullname',crud_city='$city',crud_status='$status' WHERE crud_id=$id";
mysqli_query($con, $query);
echo true;
?>