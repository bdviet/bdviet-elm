<?php
 
                // Nếu không phải là sự kiện đăng ký thì không xử lý
                if (!isset($_POST['username'])){
                    die('');
                }
                 
                //Nhúng file kết nối với database
                include('admin/dbcon.php');
                      
                //Khai báo utf-8 để hiển thị được tiếng việt
                
                      
                //Lấy dữ liệu từ file dangky.php
                $username   = addslashes($_POST['username']);
                $password   = addslashes($_POST['password']);
                $firstname  = addslashes($_POST['firstname']);
                $lastname   = addslashes($_POST['lastname']);
                $class_id   = addslashes($_POST['class_id']);
                      
                //Kiểm tra người dùng đã nhập liệu đầy đủ chưa
                if (!$username || !$password || !$firstname || !$lastname || !$class_id)
                {
                    echo "Vui lòng nhập đầy đủ thông tin. <a href='javascript: history.go(-1)'>Trở lại</a>";
                    exit;
                }
                      
                    // Mã khóa mật khẩu
                    $password = md5($password);
                mysql_query("set names 'utf8'");   
                //Kiểm tra tên đăng nhập này đã có người dùng chưa
                if (mysql_num_rows(mysql_query("SELECT username FROM student WHERE username='$username'")) > 0){
                    echo "Tên đăng nhập này đã có người dùng. Vui lòng chọn tên đăng nhập khác. <a href='javascript: history.go(-1)'>Trở lại</a>";
                    exit;
                }

                //Lưu thông tin thành viên vào bảng
                mysql_query("set names 'utf8'");   
                @$addmember = mysql_query("
                    INSERT INTO student (
                        username,
                        password,
                        firstname,
                        lastname,
                        class_id,
                        location,
                        status

                    )
                    VALUE (
                        '{$username}',
                        '{$password}',
                        N'{$firstname}',
                        N'{$lastname}',
                        '{$class_id}',
                        'uploads/NO-IMAGE-AVAILABLE.jpg',
                        'Registered'
                    )
                ");
                                      
                //Thông báo quá trình lưu
                if ($addmember)
                    echo 'true';
                else
                    echo 'false';
            ?>