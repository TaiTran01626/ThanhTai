<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="spring"
	uri="http://www.springframework.org/tags/form"%>
	<%@taglib uri="http://www.springframework.org/tags" prefix="springmess"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Thông Tin Tài Khoản</title>
<link href="${pageContext.request.contextPath}/css/bootstrap.css"
	rel="stylesheet" type="text/css" media="all" />
<script src="${pageContext.request.contextPath}/js/jquery.min.js"></script>
<link href="${pageContext.request.contextPath}/css/style.css"
	rel="stylesheet" type="text/css" media="all" />
	<link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons"/>
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
<link rel="stylesheet"
	href="https://use.fontawesome.com/releases/v5.4.2/css/all.css" />

	
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


<style>

.close {
  color: #aaaaaa;
  float: right;
  font-size: 28px;
  font-weight: bold;
}

.close:hover,
.close:focus {
  color: #000;
  text-decoration: none;
  cursor: pointer;
}

.a1 {
	width: 80%;
	height: auto;
	margin: 0 auto;
}

.a1.a2 {
	width: 80%;
	height: auto;
	margin: 0 auto;
}

.a2 {
	width: 45%;
	height: auto;
	margin: 0 auto;
}

</style>
</head>
<body
	style="background:url(${pageContext.request.contextPath}/video/bann.jpg) fixed;color:white;">

	<jsp:include page="header_User.jsp"></jsp:include>

	<div class="a2">
		
		<div class="single">

			<div class="as">

				<p
					style="font-size: 28px; background-color: rgba(0, 0, 0, 0.4); border-top-right-radius: 45px; color: #f7921d"><springmess:message code="label.inforUser" />
				<p>
				<div>
					<div
						style="border: 2px solid #00c6d7; border-top-right-radius: 23px; color: white;">
						<p style="padding-left: 50px; font-size: 18px;">
							<strong
								style="color: #f7921d"><springmess:message code="label.fullname" /></strong><span
								style="margin-left: 366px;"> ${infor.fullname}
							</span>
						</p>
					</div>
					<div
						style="border: 2px solid #00c6d7; border-top-right-radius: 23px; color: white;">
						<p style="padding-left: 50px; font-size: 18px;">
							<strong style="color: #f7921d"><springmess:message code="label.username" /></strong><span style="margin-left: 325px;"> ${infor.username}
							</span>
						</p>
					</div>
					<div
						style="border: 2px solid #00c6d7; border-top-right-radius: 23px; color: white;">
						<p style="padding-left: 50px; font-size: 18px;">
							<strong style="color: #f7921d">Email</strong><span
								style="margin-left: 380px;">  ${infor.email}
							</span>
						</p>
					</div>
					<div
						style="border: 2px solid #00c6d7; border-top-right-radius: 23px; color: white;">
						<p style="padding-left: 50px; font-size: 18px;">
							<strong style="color: #f7921d"><springmess:message code="label.birthday" />
								</strong><span style="margin-left: 370px;"> ${infor.birthday}
							</span>
						</p>
					</div>
					<div
						style="border: 2px solid #00c6d7; border-top-right-radius: 23px; color: white;">
						<p style="padding-left: 50px; font-size: 18px;">
							<strong style="color: #f7921d"><springmess:message code="label.address" /></strong>
							<span style="margin-left: 400px;"> ${infor.address}
							</span>
						</p>
					</div>
					<div
						style="border: 2px solid #00c6d7; border-top-right-radius: 23px; color: white;">
						<p style="padding-left: 50px; font-size: 18px;">
							<strong style="color: #f7921d"><springmess:message code="label.phone" /></strong><span style="margin-left: 340px;"> ${infor.phone}
							</span>
						</p>
					</div>
					
				</div>

				

			</div>
			<div class="clearfix"></div>
		</div>
	</div>

	<!--end-->



	<jsp:include page="footer.jsp"></jsp:include>

</body>
</html>
