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
<%-- <link href="${pageContext.request.contextPath}/css/pager.min.css"
	rel="stylesheet" type="text/css" media="all" /> --%>
<script src="${pageContext.request.contextPath}/js/jquery.min.js"></script>
<script
	src="${pageContext.request.contextPath}/js/jquery.twbsPagination.js"></script>
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
<!--slider-script-->
<script
	src="${pageContext.request.contextPath}/js/responsiveslides.min.js"></script>
<script>
	$(function() {
		$("#slider2").responsiveSlides({
			auto : true,
			speed : 100,
			namespace : "rslides",

			pager : false,
		});
	});
</script>
<script>
	var totalPages = $
	{
		pageModel.totalPage
	};
	var currentPage = $
	{
		pageModel.page
	};
	$(function() {
		window.pagObj = $('#pagination').twbsPagination({
			totalPages : totalPages,
			visiblePages : 3,
			startPage : currentPage,
			onPageClick : function(event, page) {
				if (currentPage != page) {
					$('#limit').val(3);
					$('#page').val(page);

				}
			}
		});
	});
</script>

<script type="text/javascript"
	src="${pageContext.request.contextPath}/js/jquery.flexisel.js"></script>

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
</style>

<script type="text/javascript">
	$(document).ready(function() {
		$("#luuthongtin").click(function() {

			$("#luuthongtin").html("Đã Lưu");
			$("#luuthongtin").css('cursor', 'unset');
		});
	});
</script>
</head>
<body>

	<div class="container" style="margin-top: 60px;">
		<div class="content">
			<div class="content-top">
				<div>
					<h3 class="future" style="color: white;">
						<springmess:message code="label.vip" />
					</h3>
					<i> <a
						style="color: white; float: right; margin-right: 80px; font-size: 20px"
						id="showall" href="showAllNews?page=1&limit=3"><springmess:message
								code="label.showall" /></a></i>
				</div>

				<div class="content-top-in">
					<!-- <div class="banner">
						<div class="slider">
							<ul class="rslides" id="slider3"> -->
					<form action="<c:url value = '/home'></c:url>"
						id="formSubmit">
						<c:forEach items="${packagetype.post}" var="post">

							<div class="col-md-3 md-col" style="margin-top: 30px">
								<div class="col-md"
									style="background: rgba(0, 0, 0, 0.4); box-shadow: 2px 2px 16px 0px black">
									<div>
										<i class="fas fa-home" style="color: white;">
											${post.title} </i><span><i
											style="float: right; color: white;"
											class="far fa-calendar-alt"> ${post.start_day} </i></span>
									</div>

									<div class="clearfix"></div>
									<div class="col-md_img">
										<div class="banner">
											<div class="slider">
												<ul class="rslides" id="slider2">
													<c:forEach items="${post.detail.images}" var="image">
														<li><img src='getImage/<c:out value="${image.id}"/> '
															alt='' style="height: 253px"></li>
													</c:forEach>
												</ul>
											</div>
										</div>
									</div>

									<div class="top-content">
										<h5>
											<a style="color: white;" href="showDetail?id=${post.id}"></a>
										</h5>
										<h5 style="padding: 0px; margin-top: -9px;">
											<i class="fas fa-compass" style="color: white;">
												${post.detail.address} </i>
										</h5>
										<h5 style="padding: 0px; margin-top: 4px;">
											<i class="fab fa-laravel"
												style="color: white; padding: 0px; margin-top: -9px;">
												${post.detail.area}m<sup>2</sup>
											</i>
										</h5>

										<div class="white">

											<a onclick="addViaAjax(${post.id})"
												id="luuthongtin"
												class="hvr-shutter-in-vertical hvr-shutter-in-vertical2"><springmess:message
													code="label.savepost" /></a> <a
												href="showDetail?id=${post.id}"
												style="cursor: unset; background: black;" id="xemchitiet"
												class="hvr-shutter-in-vertical hvr-shutter-in-vertical2"><springmess:message
													code="label.showdetail" /> </a>

											<p class="dollar">
												<span>${post.detail.price}</span><span>Triệu</span><span
													class="in-dollar">VNĐ</span>
											</p>
											<div class="clearfix"></div>
										</div>
									</div>
								</div>
							</div>

						</c:forEach>
						<input type="hidden" value="" id="page" name="page" /> <input
							type="hidden" value="" id="limit" name="limit" />
					</form>

					<!-- </ul>
						</div>
					</div> -->
				</div>
			</div>
		</div>
	</div>

	<jsp:include page="pagination.jsp"></jsp:include>
<script type="text/javascript">
	function addViaAjax(id) {
			var id = id;
			$.ajax({
				type : "GET",
				contentType : "application/json",
				url : "${pageContext.request.contextPath}/savePostedAj",
				data : {
					id : id
				},
				dataType : 'json',
				timeout : 100000,
				success : function(data) {
					if (data.validated) {
						alert(data.name);
						$("#luuthongtin").val("Đã Lưu");
						$("#luuthongtin").hind();
					} else {
						alert(data.name);
					}
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
