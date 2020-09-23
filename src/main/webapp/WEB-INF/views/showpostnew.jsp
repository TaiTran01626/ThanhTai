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
	src="${pageContext.request.contextPath}/js/move-top.js"></script>
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
	<div class="container" style="border: 3px solid black;">
		<%
			request.setCharacterEncoding("UTF-8");
		%>
		<%
			response.setContentType("text/html; charset=UTF-8");
		%>
		<div class="container" style="margin-top: 60px;">
			<div class="content">
				<div class="content-top">
					<h3 class="future" style="color: white;">Nhà ,Đất Bán Tại Đà
						Nẵng</h3>
					<div class="content-top-in">
						<%--
                            request.setCharacterEncoding("UTF-8");
                            response.setCharacterEncoding("UTF-8");
                            for (Product p : ProductDAO.getListProduct()) {
                        --%>
						<c:forEach items="${listpost}" var="post">
							<!--  khung của postnew -->
							<div class="col-md-3 md-col" style="margin-top: 30px">
								<div class="col-md"
									style="background: rgba(0, 0, 0, 0.4); box-shadow: 2px 2px 16px 0px black">
									<div>
										<i class="fas fa-home" style="color: white;"> <%--=p.getHinhthuc()--%>
										</i><span><i style="float: right; color: white;"
											class="far fa-calendar-alt"> ngaythang<%--=p.getNgaydang()--%>
										</i></span>
									</div>
									<div class="clearfix"></div>
									<div class="col-md_img">
										<a href="single.jsp?productID="> <img src=${post.image}
											style="height: 253px;" alt="" />
										</a>
										
									</div>
									<div class="top-content">
										<h5>
											<a style="color: white;" href="single.jsp?productID=">${post.title}</a>
											<
										</h5>
										<h5 style="padding: 0px; margin-top: -9px;">
											<i class="fas fa-compass" style="color: white;"> <%--=p.getVitri()--%>
											</i>
										</h5>
										<h5 style="padding: 0px; margin-top: 4px;">
											<i class="fab fa-laravel"
												style="color: white; padding: 0px; margin-top: -9px;">
												${post.area}m<sup>2</sup>
											</i>
										</h5>

									</div>
									<%-- <spring:form modelAttribute="post">
									<spring:label path="title"></spring:label>
									<spring:label path="price"></spring:label>
									<spring:label path="area"></spring:label>
									<spring:label path="dM"></spring:label>
									<spring:label path="image"></spring:label>
								</spring:form> --%>
								</div>
							</div>
						</c:forEach>
						<%--
                            }
                        --%>
						<div class="clearfix"></div>
					</div>
				</div>
			</div>
		</div>
		<ul class="start" style="margin-left: 564px; margin-top: 32px;">
			<li><a href="#"><i></i></a></li>
			<li><span>1</span></li>
			<li><a href="#"><i class="next"> </i></a></li>
		</ul>
	</div>
	<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>
