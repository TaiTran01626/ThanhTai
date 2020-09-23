<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="spring"
	uri="http://www.springframework.org/tags/form"%>
<%@page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Đăng Ký</title>
<link href="${pageContext.request.contextPath}/css/bootstrap.css" rel="stylesheet" type="text/css"
	media="all" />
<script src="${pageContext.request.contextPath}/js/jquery.min.js"></script>
<link href="${pageContext.request.contextPath}/css/style.css" rel="stylesheet" type="text/css" media="all" />
<meta name="viewport"
	content="width=device-width,height=device-height,user-scalable=yes, initial-scale=1, minimum-scale=1.0, maximum-scale=3.0">
<script type="application/x-javascript">
	 addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } 
</script>
<link
	href='http://fonts.googleapis.com/css?family=Exo:100,200,300,400,500,600,700,800,900'
	rel='stylesheet' type='text/css'>
<script type="text/javascript" src="${pageContext.request.contextPath}/js/easing.js"></script>

	
<style>
#tb:hover {
	animation: swing 1s ease;
	border-color: #00c6d7;
	box-shadow: 0 10px 6px -6px #777;
	color: #00c6d7;
}
</style>
 <style>
.error_message {
	color: red;
	font-size: 90%;
	font-style: italic;
}
</style> 
</head>
<body style="background: url(${pageContext.request.contextPath}/video/bann.jpg) fixed">
	<jsp:include page="header.jsp"></jsp:include>
	<div class="container" style="border: 3px solid black;">
		
		<div class="container">
			<div class="account">
				<h2 class="account-in" style="color: white;">Đăng Ký Tài Khoản</h2>
				<form name="registerForm" id="registerForm"> <!-- action="saveUser"  -->
					<div>
						<span class="mail" style="color: white;">Họ Và Tên:*</span> 
						<span>
							<input  type="text" name="fullname" 
								style="margin-left: 34px;padding-left: 23px;color:#f7921d" id="fullname"
								 placeholder="Điền họ và tên..." /> </span>
								 
					</div>
					<div>
						<span class="mail" style="color: white;">Email/Gmail:*</span> 
						<span>
							<input type="text" name="email"
								style="margin-left: 17px;padding-left: 23px;color:#f7921d" id="email"
								placeholder="Điền email..." /></span>
								
						
					</div>
					<div>
					<span class="word" style="color: white;">Tên đăng nhập:*</span> 
						<span>
							<input type="text" name="username" 
								style="margin-left: 34px;padding-left: 23px;color:#f7921d" id="username"
								 placeholder="Điền tên đăng nhập..." /> </span>
								
					</div>
					<div>
						<span class="word" style="color: white;">Mật khẩu:*</span> <span>
							<input type="password" name="pass"
								style="margin-left: 68px;padding-left: 23px; color:#f7921d"  id="pass"
								placeholder="Điền mật khẩu..." /> </span>
								
					</div>
					<div>
						<span class="word" style="color: white;">Nhập lại mật khẩu:*</span>
							 <span> 	<input type="password" name="re_pass"
								style="padding-left: 23px;color:#f7921d" id="re_pass" 
								placeholder="Điền lại mật khẩu..." /> </span>
									
					</div>
					<div>
						<span class="word" style="color: white;">Địa chỉ:*</span> 
						<span>
							<input type="text" name="address"
								style="margin-left: 84px;padding-left: 23px;color:#f7921d" id="address"
								 placeholder="Điền địa chỉ..." /> </span>
									
						
					</div>
					<div>
						<span class="word" style="color: white;">Ngày sinh:*</span>
						 <span><input type="text" name="birthday" style="margin-left: 60px;padding-left: 23px;color:#f7921d"
								id="birthday"
								placeholder="Điền ngày tháng năm sinh..." /></span>
								 	
					</div>

					<div>
						<span class="word" style="color: white;">Số điện thoại:*</span> <span>
						<input type="text" name="phone" style="margin-left: 40px;padding-left: 23px;color:#f7921d"
								id="phone" placeholder="Điền số điện thoại..." /></span>
						
					</div>
						<div class="form-submit">
						 <button type="button"  style=" background: #329e5e;color:#f7921d;  width: 100px; height: 50px; " onclick="saveUser()">Đăng Ký</button> 
					<%--  <spring:button style=" background: #329e5e;color:#f7921d;  width: 100px; height: 50px;">Đăng ký</spring:button> --%>
							</div>
				</form>
			</div>
		</div>
	</div>

	<jsp:include page="footer.jsp"></jsp:include>
	
	 <script type="text/javascript">
		function saveUser() {
			
			var url = window.location.origin+"/WebsiteMuaBanNhaDat/saveUser";
		
			var xhttp;
			if (window.XMLHttpRequest) {
				xhttp = new XMLHttpRequest();
			} else {
				xhttp = new ActiveXObject("Microsoft.XMLHTTP");
			}
			xhttp.onreadystatechange = function() {
				if (xhttp.readyState == 4) {
					var data = xhttp.responseText;
					if (data.indexOf("form") == -1) {
						if (data.indexOf("thành công") != -1) {
							document.registerForm.fullname.value = "";
							document.registerForm.email.value = "";
							document.registerForm.username.value = "";
							document.registerForm.pass.value = "";
							document.registerForm.re_pass.value = "";
							document.registerForm.address.value = "";
							birthday : document.registerForm.birthday.value = "";
							phone : document.registerForm.phone.value= "";
						}
					
						alert(data);
					} else {
						document.getElementById("registerForm").innerHTML = data;
					}
				}
			}
			xhttp.open("POST", url, true);
			xhttp.setRequestHeader("Content-Type", "application/json");
			xhttp.send(JSON.stringify({
				fullname : document.registerForm.fullname.value,
				email : document.registerForm.email.value,
				username : document.registerForm.username.value,
				pass : document.registerForm.pass.value,
				re_pass : document.registerForm.re_pass.value,
				address : document.registerForm.address.value,
				birthday : document.registerForm.birthday.value,
				phone : document.registerForm.phone.value
			}));
		}
	</script> 
</body>
</html>
