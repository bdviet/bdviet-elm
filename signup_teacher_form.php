			<form id="signin_teacher" class="form-signin" method="post">
					<h3 class="form-signin-heading"><i class="icon-lock"></i> Đăng ký làm giảng viên</h3>
					<input type="text" class="input-block-level"  name="firstname" placeholder="Tên" required>
					<input type="text" class="input-block-level"  name="lastname" placeholder="Họ" required>
					<label>Giảng dạy trường</label>
					<select name="department_id" class="input-block-level span12">
						<option></option>
						<?php
						$query = mysql_query("select * from department order by department_name ")or die(mysql_error());
						while($row = mysql_fetch_array($query)){
						?>
						<option value="<?php echo $row['department_id'] ?>"><?php echo $row['department_name']; ?></option>
						<?php
						}
						?>
					</select>
					<input type="text" class="input-block-level" id="username" name="username" placeholder="Tên đăng nhập" required>
					<input type="password" class="input-block-level" id="password" name="password" placeholder="Mật khẩu" required>
					<input type="password" class="input-block-level" id="cpassword" name="cpassword" placeholder="Nhập lại mật khẩu" required>
					<button id="signin" name="login" class="btn btn-info" type="submit"><i class="icon-check icon-large"></i> Đăng ký</button>
			</form>
			<script>
			jQuery(document).ready(function(){
			jQuery("#signin_teacher").submit(function(e){
					e.preventDefault();
						var password = jQuery('#password').val();
						var cpassword = jQuery('#cpassword').val();
					if (password == cpassword){
					var formData = jQuery(this).serialize();
					$.ajax({
						type: "POST",
						url: "teacher_signup.php",
						data: formData,
						success: function(html){
						if(html=='true')
						{
						$.jGrowl("Chào mừng đến với hệ thống học trực tuyến - Thầy Việt", { header: 'Đăng ký thành công' });
						var delay = 2000;
							setTimeout(function(){ window.location = 'dasboard_teacher.php'  }, delay);  
						}else{
							$.jGrowl("Vui lòng nhập lại thông tin", { header: 'Đăng ký thất bại' });
						}
						}
					});
			
					}else
						{
						$.jGrowl("Mật khẩu không khớp nhau, thử lại", { header: 'Đăng ký thất bại' });
						}
				});
			});
			</script>
			<a onclick="window.location='index.php'" id="btn_login" name="login" class="btn" type="submit"><i class="icon-signin icon-large"></i> Click để đăng nhập</a>
			
			
			
				
		
					
		