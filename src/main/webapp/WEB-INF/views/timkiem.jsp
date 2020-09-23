<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="spring"
	uri="http://www.springframework.org/tags/form"%>
<%@taglib uri="http://www.springframework.org/tags" prefix="springmess"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>content</title>
<link href="${pageContext.request.contextPath}/css/bootstrap.css"
	rel="stylesheet" type="text/css" media="all" />
<script src="${pageContext.request.contextPath}/js/jquery.min.js"></script>
<link href="${pageContext.request.contextPath}/css/style.css"
	rel="stylesheet" type="text/css" media="all" />
<script type="text/javascript"
	src="${pageContext.request.contextPath}/js/jquery.flexisel.js"></script>
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
<script
	src="${pageContext.request.contextPath}/js/responsiveslides.min.js"></script>
<script>
	$(function() {
		$("#slider2").responsiveSlides({
			auto : true,
			speed : 200,
			namespace : "callbacks",
			pager : true,
		});
	});
</script>

<style>
.col-md:hover {
	border: 1px solid #00c6d7;
	box-shadow: 2px 2px 16px 0px violet;
}

ul.callbacks_tabs.callbacks1_tabs {
	left: 45%;
}

.col-md {
	transition: 1s all ease;
	perspective: 600px;
}

.col-md_img {
	overflow: hidden;
}

.col-md a img {
	transition: 2s all ease;
}

.col-md:hover {
	transform: rotate(5deg);
	box-shadow: 2px 2px 16px 0px violet !important;
}

.col-md:hover a img {
	transform: scale(1.2);
}

.select {
	padding: 0.7em;
	width: 30%;
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
</style>


</head>
<body
	style="background: url(${pageContext.request.contextPath}/video/bann.jpg) fixed">
	<jsp:include page="header.jsp"></jsp:include>
	<div class="container" style="margin-top: 60px;">
		<div class="content">
			<div class="content-top">
				<h3 class="future" style="color: white;">
					<springmess:message code="label.search" />
				</h3>
				<div class="content-top-in">
					<spring:form modelAttribute="postNew" id="postNew">


						<div>
							<p class="word" style="color: white; padding-top: 10px;">
								<springmess:message code="label.type" />
							</p>
							<spring:select path="news.id" cssClass="select" id="type"
								style="color: #f7921d;border: 2px solid #f7921d;backround:#464646">
								<spring:options items="${types}" itemValue="id" itemLabel="name" />
							</spring:select>

						</div>
						<div>
							<p class="word" style="color: white; padding-top: 10px;">
								<springmess:message code="label.area" />
							</p>
							<spring:input path="detail.area" cssClass="select"
								style="color: #f7921d;border: 2px solid #f7921d;" />
							<div class="error_message">
								<spring:errors path="detail.area"></spring:errors>
							</div>
						</div>

						<div>
							<p class="word" style="color: white; padding-top: 10px;">
								<springmess:message code="label.address" />
							</p>
							<spring:input path="detail.address" cssClass="select"
								style="color: #f7921d;border: 2px solid #f7921d;" />
							<div class="error_message">
								<spring:errors path="detail.address"></spring:errors>
							</div>
						</div>

						<div>
							<p class="word" style="color: white; padding-top: 10px;">
								<springmess:message code="label.price" />
							</p>
							<div style="column-count: 2">
								<spring:input path="priceFrom" cssClass="select"
									style="color: #f7921d;border: 2px solid #f7921d;" />
								<spring:input path="priceTo" cssClass="select"
									style="color: #f7921d;border: 2px solid #f7921d;" />
								<span style="color: #f7921d; border: 2px solid #f7921d;">Triệu
									VNĐ</span>
							</div>
						</div>
					</spring:form>
					<button onclick="searchAjax()" id="btnsearch"
						class="hvr-shutter-in-vertical hvr-shutter-in-vertical2 ">
						<springmess:message code="label.btnSearch" />
					</button>
				</div>
			</div>
		</div>
	</div>
	<div class="container" style="margin-top: 60px;" id="showAjaxSearch">
		<div class="content">
			<div class="content-top">
				<div>
					<h3 class="future" style="color: white;">
						<springmess:message code="label.resultSearch" />
					</h3>
				</div>

				<div class="content-top-in">
					<!-- <div class="banner">
						<div class="slider">
							<ul class="rslides" id="slider3"> -->
					<c:forEach items="${search}" var="search">

						<div class="col-md-3 md-col" style="margin-top: 30px">
							<div class="col-md"
								style="background: rgba(0, 0, 0, 0.4); box-shadow: 2px 2px 16px 0px black">
								<div>
									<i class="fas fa-home" style="color: white;">
										${search.title} </i><span><i
										style="float: right; color: white;"
										class="far fa-calendar-alt"> ${search.start_day} </i></span>
								</div>

								<div class="clearfix"></div>
								<div class="col-md_img">
									<div class="banner">
										<div class="slider">
											<ul class="rslides" id="slider2">
												<c:forEach items="${search.detail.images}" var="image">
													<li><img src="getImage/<c:out value='${image.id}'/> "
														alt="" style="height: 253px"></li>
												</c:forEach>
											</ul>
										</div>
									</div>
								</div>

								<div class="top-content">
									<h5>
										<a style="color: white;" href="showDetail?id=${search.id}"></a>
									</h5>
									<h5 style="padding: 0px; margin-top: -9px;">
										<i class="fas fa-compass" style="color: white;">
											${search.detail.address} </i>
									</h5>
									<h5 style="padding: 0px; margin-top: 4px;">
										<i class="fab fa-laravel"
											style="color: white; padding: 0px; margin-top: -9px;">
											${search.detail.area}m<sup>2</sup>
										</i>
									</h5>

									<div class="white">

										<a href="CartServlet?command=plus&productID=" id="luuthongtin"
											class="hvr-shutter-in-vertical hvr-shutter-in-vertical2"><springmess:message
												code="label.savepost" /></a> <a
											href="showDetail?id=${search.id}"
											style="cursor: unset; background: black;" id="xemchitiet"
											class="hvr-shutter-in-vertical hvr-shutter-in-vertical2"><springmess:message
												code="label.showdetail" /> </a>

										<p class="dollar">
											<span>${search.detail.price}</span><span>Triệu</span><span
												class="in-dollar">VNĐ</span>
										</p>
										<div class="clearfix"></div>
									</div>
								</div>
							</div>
						</div>

					</c:forEach>
					<!-- </ul>
						</div>
					</div> -->
				</div>
			</div>
		</div>
	</div>

	<jsp:include page="pagination.jsp"></jsp:include>
	<jsp:include page="footer.jsp"></jsp:include>
	<script type="text/javascript">
		function searchAjax() {
			 $("#showAjaxSearch").children().remove();
			var postNew = $("#postNew").serialize();
			$.ajax({
				type : "GET",
				contentType : "application/json",
				url : "${pageContext.request.contextPath}/searchAdvanceAj",
				data : postNew,
				dataType : 'json',
				timeout : 100000,
				success : function(data) {
					$.each(data.newResponses, function(key,value) {
						$("#showAjaxSearch").append(value.code);
						 
					});
				},
				error : function(e) {
					alert("Lưu Thất Bại")
					console.log("ERROR: ", e);

				}
			});
		}
	</script>

</body>
</html>
