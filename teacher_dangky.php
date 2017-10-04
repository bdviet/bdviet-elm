<?php
 
    // Nếu không phải là sự kiện đăng ký thì không xử lý
    if (!isset($_POST['username'])){
        die('');
    }
     
    //Nhúng file kết nối với database
    include('admin/dbcon.php');
          
    //Khai báo utf-8 để hiển thị được tiếng việt
    // header('Content-Type: text/html; charset=UTF-8');
          
    //Lấy dữ liệu từ file dangky.php
    $username   = addslashes($_POST['username']);
    $password   = addslashes($_POST['password']);
    $firstname  = addslashes($_POST['firstname']);
    $lastname   = addslashes($_POST['lastname']);
    $department_id   = addslashes($_POST['department_id']);
          
    //Kiểm tra người dùng đã nhập liệu đầy đủ chưa
    if (!$username || !$password || !$firstname || !$lastname || !$department_id)
    {
        echo "Vui lòng nhập đầy đủ thông tin. <a href='javascript: history.go(-1)'>Trở lại</a>";
        exit;
    }
          
        // Mã khóa mật khẩu
        $password = md5($password);
          
    //Kiểm tra tên đăng nhập này đã có người dùng chưa
    if (mysql_num_rows(mysql_query("SELECT username FROM teacher WHERE username='$username'")) > 0){
        echo "Tên đăng nhập này đã có người dùng. Vui lòng chọn tên đăng nhập khác. <a href='javascript: history.go(-1)'>Trở lại</a>";
        exit;
    }
          
    //Lưu thông tin thành viên vào bảng
    @$addmember = mysql_query("
        INSERT INTO teacher (
            username,
            password,
            firstname,
            lastname,
            department_id,
            location,
            about,
            teacher_status,
            teacher_stat
        )
        VALUE (
            '{$username}',
            '{$password}',
            '{$firstname}',
            '{$lastname}',
            '{$department_id}',
            'uploads/NO-IMAGE-AVAILABLE.jpg',
            '',
            'Registered',
            'Deactivated'
        )
    ");
                          
    //Thông báo quá trình lưu
    if ($addmember)
        $_SESSION['id']=$id;
		echo 'true';
    else
        echo 'false';
?>

			////////
			<?php
include('admin/dbcon.php');
session_start();
$username = $_POST['username'];
$password = $_POST['password'];
$firstname = $_POST['firstname'];
$lastname = $_POST['lastname'];
$department_id = $_POST['department_id'];

$query = mysql_query("select * from teacher where  firstname='$firstname' and lastname='$lastname' and department_id = '$department_id'")or die(mysql_error());
$row = mysql_fetch_array($query);
$id = $row['teacher_id'];

$count = mysql_num_rows($query);
if ($count > 0){
	mysql_query("update teacher set username='$username',password = '$password', teacher_status = 'Registered' where teacher_id = '$id'")or die(mysql_error());
	$_SESSION['id']=$id;
	echo 'true';
}else{
	echo 'false';
}
?>