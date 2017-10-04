			<form id="login_form1" class="form-signin" method="post">
						<h3 class="form-signin-heading"><i class="icon-lock"></i> Đăng nhập</h3>
						<input type="text" class="input-block-level" id="username" name="username" placeholder="Tài khoản" required>
						<input type="password" class="input-block-level" id="password" name="password" placeholder="Mật khẩu" required>
						<button data-placement="right" title="Click vào đây để đăng nhập" id="signin" name="login" class="btn btn-info" type="submit"><i class="icon-signin icon-large"></i> Đăng nhập</button>
														<script type="text/javascript">
														$(document).ready(function(){
															$('#signin').tooltip('show');
															$('#signin').tooltip('hide');
														});
														</script>		
			</form>
						<script>
						jQuery(document).ready(function(){
						jQuery("#login_form1").submit(function(e){
								e.preventDefault();
								var formData = jQuery(this).serialize();
								$.ajax({
									type: "POST",
									url: "login.php",
									data: formData,
									success: function(html){
									if(html=='true')
									{
									$.jGrowl("Loading file, Please Wait......", { sticky: true });
									$.jGrowl("Welcome to e-Learning Management System", { header: 'Access Granted' });
									var delay = 1000;
										setTimeout(function(){ window.location = 'dasboard_teacher.php'  }, delay);  
									}else if (html == 'true_student'){
										$.jGrowl("Welcome to e-Learning Management System", { header: 'Access Granted' });
									var delay = 1000;
										setTimeout(function(){ window.location = 'student_notification.php'  }, delay);  
									}else
									{
									$.jGrowl("Nhập lại thông tin đăng nhập", { header: 'Login Failed' });
									}
									}
								});
								return false;
							});
						});
						</script>
			<div id="button_form" class="form-signin" >
			Thành viên mới
			<hr>
				<h3 class="form-signin-heading"><i class="icon-edit"></i> Đăng ký</h3>
				<button data-placement="top" title="Đăng ký nếu bạn muốn làm sinh viên của hệ thống" id="signin_student" onclick="window.location='signup_student.php'" id="btn_student" name="login" class="btn btn-info" type="submit">Tôi là sinh viên</button>
				<div class="pull-right">
					<button data-placement="top" title="Đăng ký nếu bạn muốn làm giảng viên cho hệ thống" id="signin_teacher" onclick="window.location='signup_teacher.php'" name="login" class="btn btn-info" type="submit">Tôi là giáo viên</button>
				</div>
			</div>
				<script type="text/javascript">
				$(document).ready(function(){
					$('#signin_student').tooltip('show'); $('#signin_student').tooltip('hide');
				});
				</script>	
				<script type="text/javascript">
				$(document).ready(function(){
					$('#signin_teacher').tooltip('show'); $('#signin_teacher').tooltip('hide');
				});
				</script>	