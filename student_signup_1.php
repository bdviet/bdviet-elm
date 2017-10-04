<?php
include('admin/dbcon.php');
session_start();
$username = $_POST['username'];
$password = $_POST['password'];
$firstname = $_POST['firstname'];
$lastname = $_POST['lastname'];
$class_id = $_POST['class_id'];

$query ="INSERT INTO student (firstname,lastname,class_id,username,password,location,status) VALUES ('$firstname','$lastname','$class_id','$username','$password','uploads/NO-IMAGE-AVAILABLE.jpg','Registered')";

$data = mysql_query ($query)or die(mysql_error());
	if($data)
	{
		echo "YOUR REGISTRATION IS COMPLETED...";
		echo 'true';
	}
	else{
		echo 'false';
	}

// $row = mysql_fetch_array($query);
// $id = $row['student_id'];
// // var_dump($id);
// $count = mysql_num_rows($query);
// if ($count > 0){
// 	echo "Dang ky thanh cong";
// 	$_SESSION['id']=$id;
// 	echo 'true';
// }else{
// echo 'false';
// }
?>