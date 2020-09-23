<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="spring"
	uri="http://www.springframework.org/tags/form"%>
<%@taglib uri="http://www.springframework.org/tags" prefix="springmess"%>
<%@page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Đăng Ký</title>
<link href="${pageContext.request.contextPath}/css/bootstrap.css"
	rel="stylesheet" type="text/css" media="all" />
<script src="${pageContext.request.contextPath}/js/jquery.min.js"></script>
<link href="${pageContext.request.contextPath}/css/style.css"
	rel="stylesheet" type="text/css" media="all" />
<meta name="viewport"
	content="width=device-width,height=device-height,user-scalable=yes, initial-scale=1, minimum-scale=1.0, maximum-scale=3.0">
<script type="application/x-javascript">
	
	
	
	
	 addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } 




</script>
<link
	href='http://fonts.googleapis.com/css?family=Exo:100,200,300,400,500,600,700,800,900'
	rel='stylesheet' type='text/css'>
<script type="text/javascript"
	src="${pageContext.request.contextPath}/js/easing.js"></script>


<style>
#tb:hover {
	animation: swing 1s ease;
	border-color: #00c6d7;
	box-shadow: 0 10px 6px -6px #777;
	color: #00c6d7;
}
</style>
<style>
.a1 {
	border: 2px solid #f7921d;
	background-color: #f7921d;
}

.a1 .a2 {
	margin: 0px auto;
	padding-left: 64px;
	padding-right: 71px;
}

input[type=number] {
	padding: 0.7em;
	width: 60%;
	background: none;
	border: 1px solid #D1D1D1;
	border-radius: 10px;
	-webkit-border-radius: 10px;
	-o-border-radius: 10px;
	-moz-border-radius: 10px;
	-ms-border-radius: 10px;
	outline: none;
	color: #464646;
	font-size: 1em;
}
input[type=password] {
	padding: 0.7em;
	width: 60%;
	background: none;
	border: 1px solid #D1D1D1;
	border-radius: 10px;
	-webkit-border-radius: 10px;
	-o-border-radius: 10px;
	-moz-border-radius: 10px;
	-ms-border-radius: 10px;
	outline: none;
	color: #464646;
	font-size: 1em;
}

input[type=text] {
	padding: 0.7em;
	width: 60%;
	background: none;
	border: 1px solid #D1D1D1;
	border-radius: 10px;
	-webkit-border-radius: 10px;
	-o-border-radius: 10px;
	-moz-border-radius: 10px;
	-ms-border-radius: 10px;
	outline: none;
	color: #464646;
	font-size: 1em;
}

.error_message {
	color: red;
	font-size: 90%;
	font-style: italic;
}
</style>
</head>
<body
	style="background: url(${pageContext.request.contextPath}/video/bann.jpg) fixed">
	<jsp:include page="header.jsp"></jsp:include>


	<div class="container">
		<div class="account">
			<h2 class="account-in" style="color: white;">
				<springmess:message code="label.register" />
			</h2>
			<spring:form method="POST" modelAttribute="userModel"
				id="userModel" name="userModel">
				<!-- action="saveUser"  -->

				<span class="mail" style="color: white;"><springmess:message
						code="label.fullname" />:*</span>
				<div>
					<span> <spring:input path="fullname"
							style="margin: auto;color:#f7921d; justify-content: space-between; "
							id="fullname" name="fullname" />
					</span>
				</div>
				


				<span class="mail" style="color: white;">Email/Gmail:*</span>
				<div>
					<span> <spring:input path="email"
							style="margin:auto;color:#f7921d; justify-content: space-between;"
							id="email" name="email" />
					</span>
				</div>
				


				<span class="word" style="color: white;"><springmess:message
						code="label.username" />:*</span>
				<div>
					<span> <spring:input path="username"
							style="margin: auto;color:#f7921d; justify-content: space-between;  "
							id="username" name="username" />
					</span>
				</div>
				
				<span class="word" style="color: white;"><springmess:message
						code="label.pass" />:*</span>
				<div>
					<span> <spring:password path="pass"
							style="margin: auto;color:#f7921d; justify-content: space-between;  "
							id="pass" name="pass" />
					</span>
				</div>
				
				<span class="word" style="color: white;"><springmess:message
						code="label.re_pass" />:*</span>
				<div>
					<span> <spring:password path="re_pass"
							style="margin: auto;color:#f7921d; justify-content: space-between; "
							id="re_pass" name="re_pass" />
					</span>
				</div>
				
				<span class="word" style="color: white;"><springmess:message
						code="label.address" />:*</span>
				<div>
					<span> <spring:input path="address"
							style="margin-right: 80px;color:#f7921d" id="address"
							name="address" />
					</span>
				</div>
				

				<span class="word" style="color: white;"><springmess:message
						code="label.birthday" />:*</span>
				<div>
					<span><spring:input path="birthday"
							style="margin-right: 80px;color:#f7921d" id="birthday"
							name="birthday" /></span>
				</div>
				

				<span class="word" style="color: white;"><springmess:message
						code="label.phone" />:*</span>
				<div>
					<span><spring:input path="phone"
							style="margin-right: 50px;color:#f7921d" id="phone" name="phone" /></span>
				</div>
				
				<div class="form-submit">
					<button type="submit"
						style="float: left;background: #329e5e; color: #f7921d; width: 100px; height: 50px;">
						<springmess:message code="label.btnRegister" />
					</button>
				</div>
			</spring:form>
		</div>
	</div>


	<jsp:include page="footer.jsp"></jsp:include>


	<script type="text/javascript">
		$('button[type=submit]').click(
				function(e) {

					e.preventDefault();
					var userModel = $("#userModel").serialize();
					$("span.error_message").remove();
					$.ajax({
						type : "GET",
						contentType : "application/json",
						url : "${pageContext.request.contextPath}/checkUser",
						data : userModel,
						dataType : 'json',
						timeout : 100000,
						success : function(res) {
							if (res.validated) {
								alert(res.name);
						        window.location="${pageContext.request.contextPath}/login";
							} else {
								$.each(res.errorMessages, function(key, value) {
									
									 $("input[name=" + key + "]").after(
											 '<br><span class="error_message">'
												+ value + '</span>');
								});
							}
						},
						error : function(e) {
							console.log("ERROR: ", e);
						}
					});
				});
	</script>
</body>
</html>
