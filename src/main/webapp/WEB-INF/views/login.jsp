<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="spring"
	uri="http://www.springframework.org/tags/form"%>
	<%@taglib uri="http://www.springframework.org/tags" prefix="springmess"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Dang Nhap</title>
<link href="css/bootstrap.css" rel="stylesheet" type="text/css"
	media="all" />
<script src="${pageContext.request.contextPath}/js/jquery.min.js"></script>
<script src='https://www.google.com/recaptcha/api.js'></script>
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
<script type="text/javascript">
	jQuery(document).ready(function($) {
		$(".scroll").click(function(event) {
			event.preventDefault();
			$('html,body').animate({
				scrollTop : $(this.hash).offset().top
			}, 1000);
		});
	});
</script>
<!--slider-script-->
<script
	src="${pageContext.request.contextPath}/js/responsiveslides.min.js"></script>
<script>
	$(function() {
		$("#slider1").responsiveSlides({
			auto : true,
			speed : 100,
			namespace : "callbacks",
			pager : true,
		});
	});
</script>
<!--//slider-script-->
<script>
	$(document).ready(function(c) {
		$('.alert-close').on('click', function(c) {
			$('.message').fadeOut('slow', function(c) {
				$('.message').remove();
			});
		});
	});
</script>
<script>
	$(document).ready(function(c) {
		$('.alert-close1').on('click', function(c) {
			$('.message1').fadeOut('slow', function(c) {
				$('.message1').remove();
			});
		});
	});
</script>
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
	style="background:url(${pageContext.request.contextPath}/video/bann.jpg) fixed">

	<jsp:include page="header.jsp"></jsp:include>
	<div class="container" style="border: 3px solid black;">
		<div class="container">
			<div class="account">
				<h2 class="account-in" style="color: white;"><springmess:message code="label.login" /></h2>

				<c:if test="${param.incorrectAccount != null}">
					<div class="alert alert-danger"><springmess:message code="label.incorrectAccount" /></div>
				</c:if>
				<c:if test="${param.accessDenied != null}">
					<div class="alert alert-danger"><springmess:message code="label.accessDenied" /></div>
				</c:if>

				<form action="j_spring_security_check" id="formLogin" method="POST">
					<div>
						<span class="word" style="color: white; margin-right: 33px;"><springmess:message code="label.username" /> </span> 
						<div>
						<input style="background-color: silver;" type="text"
							name="username" id="userName">
						  </div>
					</div>
					<div>
						<span class="mail" style="color: white; margin-right: 33px;"><springmess:message code="label.pass" /> </span> 
						<div>
						<input style="background-color: silver;" type="password"
							name="pass" id="password" >
						</div>
					</div>
<!-- 					
 -->					<input id="tb" type="submit" value="<springmess:message code="label.btnLogin" />"
						style="background: rgba(0, 0, 0, 0.4); border: 1px solid black; margin-top: 55px;">

					
				</form>
			</div>
		</div>
	</div>

	<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>
