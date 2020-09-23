<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="spring"
	uri="http://www.springframework.org/tags/form"%>
	<%@taglib uri="http://www.springframework.org/tags" prefix="springmess"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Đăng Tin</title>
<link href="${pageContext.request.contextPath}/css/bootstrap.css" rel="stylesheet" type="text/css"
	media="all" />
<script src="${pageContext.request.contextPath}/js/jquery.min.js"></script>
<link href="${pageContext.request.contextPath}css/style.css" rel="stylesheet" type="text/css" media="all" />
<meta name="viewport"
	content="width=device-width,height=device-height,user-scalable=yes, initial-scale=1, minimum-scale=1.0, maximum-scale=3.0">
<script type="application/x-javascript">
	 addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } 
</script>
<link
	href='http://fonts.googleapis.com/css?family=Exo:100,200,300,400,500,600,700,800,900'
	rel='stylesheet' type='text/css'>
<script type="text/javascript" src="${pageContext.request.contextPath}/js/easing.js"></script>
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
<script src="${pageContext.request.contextPath}/js/responsiveslides.min.js"></script>
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

.select {
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
<body style="background: url(${pageContext.request.contextPath}/video/bann.jpg) fixed">
	<jsp:include page="header_User.jsp"></jsp:include>
	<div class="container">
		<div class="container">
			<div class="account">
				<h2 class="account-in"><springmess:message code="label.menu2" /></h2>
				<div class="a1">
					<div class="a2">
						<p>
						<p style="color: white;">[+] <springmess:message code="label.guide" />?</p>
						<p style="color: white;"><springmess:message code="label.contentGuide" /></p>
						<p style="color: white; float: right; margin-top: -10px;"><springmess:message code="label.finalGuide" />,</p>
						<p
							style="color: white; margin-right: -255px; float: right; margin-top: 5px;">
							<springmess:message code="label.business" /> <strong>Hòn Đá</strong>!
						</p>
						
					</div>
				</div>
				
				<spring:form action="savepostnew" modelAttribute="postNew"
					enctype="multipart/form-data">
					<div>
						<p class="word" style="color: white;"><springmess:message code="label.title" /></p>
						<spring:input path="title"
							style="color: #f7921d;border: 2px solid #f7921d;" />
						<div class="error_message">
							<spring:errors path="title"></spring:errors>
						</div>
					</div>

					<div>
						<p class="word" style="color: white;"><springmess:message code="label.type" /></p>
						<spring:select path="news.id" cssClass="select" id="type"
							style="color: #f7921d;border: 2px solid #f7921d;backround:#464646">
							<%-- 	<spring:option value="-" label="--chọn loại tin"></spring:option> --%>

							<spring:options items="${types}" itemValue="id" itemLabel="name" />
						</spring:select>

					</div>
					<div>
						<p class="word" style="color: white;"><springmess:message code="label.package" /></p>
						<spring:select path="type.id" cssClass="select" id="package"
							style="color: #f7921d;border: 2px solid #f7921d;backround:#464646">
							<spring:options items="${packages}" itemValue="id"
								itemLabel="name" />
						</spring:select>

					</div>
					<div>
						<p class="word" style="color: white;"><springmess:message code="label.day" /></p>
						<spring:input path="ngay"
							style="color: #f7921d;border: 2px solid #f7921d;" />
						<div class="error_message">
							<spring:errors path="ngay"></spring:errors>
						</div>
					</div>
					<div>
						<p class="word" style="color: white;"><springmess:message code="label.content" /></p>
						<spring:textarea path="detail.content" cssClass="select"
							style="color: #f7921d;border: 2px solid #f7921d;" />

					</div>


					<div>
						<p class="word" style="color: white;"><springmess:message code="label.area" /></p>
						<spring:input path="detail.area"
							style="color: #f7921d;border: 2px solid #f7921d;" />
						<div class="error_message">
							<spring:errors path="detail.area"></spring:errors>
						</div>
					</div>

					<div>
						<p class="word" style="color: white;"><springmess:message code="label.address" /></p>
						<spring:input path="detail.address"
							style="color: #f7921d;border: 2px solid #f7921d;" />
						<div class="error_message">
							<spring:errors path="detail.address"></spring:errors>
						</div>
					</div>

					<div>
						<p class="word" style="color: white;"><springmess:message code="label.price" /></p>
						<div style="column-count: 2">
						<spring:input path="detail.price"
							style="color: #f7921d;border: 2px solid #f7921d;" />
						<span style="color: #f7921d;border: 2px solid #f7921d;">Triệu VNĐ</span>
						</div>
					</div>
					
					<div>
						<p class="word" style="color: white;"><springmess:message code="label.phone" /></p>
						<spring:input path="detail.phone"
							style="color: #f7921d;border: 2px solid #f7921d;" />
						<div class="error_message">
							<spring:errors path="detail.phone"></spring:errors>
						</div>
					</div>

					<table>
						<tr>
						
							<span class="word" style="color: white"><springmess:message code="label.addimage" /></span>
							
							<td><input type="file" name="file" multiple="multiple" /></td>
						</tr>
						<tr>
							<td><input type="submit" value="<springmess:message code="label.btnPost" />" /></td>
						</tr>
					</table>
				</spring:form>
			

			</div>
		</div>
	</div>
	<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>
