<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="spring"
	uri="http://www.springframework.org/tags/form"%>
<%@taglib uri="http://www.springframework.org/tags" prefix="springmess"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Thông Tin Sản Phẩm</title>
<link href="${pageContext.request.contextPath}/css/bootstrap.css"
	rel="stylesheet" type="text/css" media="all" />
<script src="${pageContext.request.contextPath}/js/jquery.min.js"></script>
<link href="${pageContext.request.contextPath}/css/style.css"
	rel="stylesheet" type="text/css" media="all" />
<link rel="stylesheet"
	href="https://fonts.googleapis.com/icon?family=Material+Icons" />
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
<script>
	// Get the modal
	var modal = document.getElementById("#myModal");

	// Get the button that opens the modal
	var btn = document.getElementById("#myBtn");

	// Get the <span> element that closes the modal
	var span = document.getElementsByClassName("close")[0];

	// When the user clicks the button, open the modal 
	btn.onclick = function() {
		modal.style.display = "block";
	}

	// When the user clicks on <span> (x), close the modal
	span.onclick = function() {
		modal.style.display = "none";
	}

	// When the user clicks anywhere outside of the modal, close it
	window.onclick = function(event) {
		if (event.target == modal) {
			modal.style.display = "none";
		}
	}
</script>
<style>

/* The Modal (background) */
.modal {
	display: none; /* Hidden by default */
	position: fixed; /* Stay in place */
	z-index: 1; /* Sit on top */
	padding-top: 100px; /* Location of the box */
	left: 0;
	top: 0;
	width: 100%; /* Full width */
	height: 100%; /* Full height */
	overflow: auto; /* Enable scroll if needed */
	background-color: rgb(0, 0, 0); /* Fallback color */
	background-color: rgba(0, 0, 0, 0.4); /* Black w/ opacity */
}

/* Modal Content */
.modal-content {
	background-color: #fefefe;
	margin: auto;
	padding: 20px;
	border: 1px solid #888;
	width: 40%;
}

/* The Close Button */
.close {
	color: #aaaaaa;
	float: right;
	font-size: 28px;
	font-weight: bold;
}

.close:hover, .close:focus {
	color: #000;
	text-decoration: none;
	cursor: pointer;
}
</style>
<style>
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

.a3 {
	width: 70%;
	height: auto;
	margin: 0 auto;
}
</style>
</head>
<body
	style="background:url(${pageContext.request.contextPath}/video/bann.jpg) fixed;color:white;">

	<jsp:include page="header.jsp"></jsp:include>
	<jsp:include page="feedback.jsp"></jsp:include>

	<div class="a2">
		<div
			style="float: right; position: relative; margin-top: 23px; margin-right: 6px; font-size: 20px;">
			<p>
				<i style="padding-left: 53px; float: right; color: #f7921d;"
					class="far fa-calendar-alt"><springmess:message
						code="label.timePost" />:${post.start_day}</i>
			</p>
		</div>
		<div class="single">

			<div class="as">

				<p
					style="font-size: 28px; background-color: rgba(0, 0, 0, 0.4); border-top-right-radius: 45px; color: #f7921d">
					<springmess:message code="label.contactInf" />
				<p>
				<div>
					<div
						style="border: 2px solid #00c6d7; border-top-right-radius: 23px; color: white;">
						<p style="padding-left: 50px; font-size: 18px;">
							<i class="far fa-caret-square-up"></i><strong
								style="color: #f7921d"><springmess:message
									code="label.title" /></strong><span style="margin-left: 366px;">
								${post.title} </span>
						</p>
					</div>
					<div
						style="border: 2px solid #00c6d7; border-top-right-radius: 23px; color: white;">
						<p style="padding-left: 50px; font-size: 18px;">
							<i class="fab fa-accusoft"></i><strong style="color: #f7921d"><springmess:message
									code="label.type" /></strong><span style="margin-left: 360px;">
								${post.news.name} </span>
						</p>
					</div>
					<div
						style="border: 2px solid #00c6d7; border-top-right-radius: 15px; color: white;">
						<p style="padding-left: 50px; font-size: 18px;">
							<i class="fas fa-money-bill"></i><strong style="color: #f7921d"><springmess:message
									code="label.price" /></strong><span style="margin-left: 380px;">
								${post.detail.price} Triệu VNĐ </span>
						</p>
					</div>
					<div
						style="border: 2px solid #00c6d7; border-top-right-radius: 23px; color: white;">
						<p style="padding-left: 50px; font-size: 18px;">
							<i class="fab fa-laravel"></i><strong style="color: #f7921d"><springmess:message
									code="label.area" /></strong><span style="margin-left: 360px;">
								${post.detail.area}m<sup>2</sup>
							</span>
						</p>
					</div>
					<div
						style="border: 2px solid #00c6d7; border-top-right-radius: 23px; color: white;">
						<p style="padding-left: 50px; font-size: 18px;">
							<i class="fas fa-address-book"></i><strong style="color: #f7921d"><springmess:message
									code="label.nameUserPost" /></strong><span style="margin-left: 270px;">
								${post.user.fullname} </span>
						</p>
					</div>
					<div
						style="border: 2px solid #00c6d7; border-top-right-radius: 23px; color: white;">
						<p style="padding-left: 50px; font-size: 18px;">
							<i class="fas fa-phone-square"></i><strong style="color: #f7921d"><springmess:message
									code="label.phone" /></strong><span style="margin-left: 317px;">
								${post.detail.phone} </span>
						</p>
					</div>
					<div
						style="border: 2px solid #00c6d7; border-top-right-radius: 23px; height: auto; color: white;">
						<p style="padding-left: 50px; font-size: 18px;">
							<i class="fas fa-compass"></i><strong style="color: #f7921d"><springmess:message
									code="label.address" /></strong><span style="margin-left: 385px;">
								${post.detail.address} </span>
						</p>
					</div>
				</div>

				<div class="top-content"
					style="float: right; position: relative; margin-top: -40px;">
					<div class="white"
						style="line-height: 17px; margin-left: 283px; margin-top: 54px;">

						<button onclick="addViaAjax(${post.id})" id="luuthongtin"
							class="hvr-shutter-in-vertical hvr-shutter-in-vertical2 ">
							<springmess:message code="label.savepost" />
						</button>

						<div class="clearfix"></div>
					</div>
				</div>

			</div>
			<div class="clearfix"></div>
		</div>
	</div>
	<div class="a1">
		<div class="as1" style="border: 2px solid black; height: auto;">
			<p
				style="background: rgba(0, 0, 0, 0.4); color: white; font-size: 25px; padding-top: 10px; padding-bottom: 10px;">
				<springmess:message code="label.description" />
			</p>
			<p style="padding-left: 100px; font-size: 20px; color: white;">
				${post.detail.content}</p>
			<div class="clearfix"></div>
			<p
				style="background: rgba(0, 0, 0, 0.4); color: white; font-size: 25px; padding-top: 10px; padding-bottom: 10px;">
				<springmess:message code="label.image" />
			</p>

			<c:forEach items="${post.detail.images}" var="image">
				<div class="col-md-3 ">
					<div class="col-md">
						<img src="getImage/<c:out value='${image.id}'/> " alt=""
							style="height: 253px">
					</div>
				</div>

			</c:forEach>
			<div class="clearfix"></div>
		</div>


	</div>
	<div class="clearfix"></div>
	<div class="a1" style="border: 3px solid black;">
		<h2 class="account-in"
			style="background: rgba(0, 0, 0, 0.4); color: white; font-size: 25px; padding-top: 10px; padding-bottom: 10px;">
			<springmess:message code="label.comment" />
		</h2>
		<c:forEach items="${post.comment}" var="comment">
			<div class="a3" style="padding-left: 100px;">
				<div class="as"
					style="font-size: 15px; background-color: rgba(0, 0, 0, 0.4); color: #f7921d; border: 3px solid black; padding-top: 10px; padding-bottom: 10px;">
					<p>${comment.user.username}
						<i style="float: right;">${comment.time}</i>
					</p>
					<p style="color: white">${comment.content}</p>
				</div>
			</div>
		</c:forEach>
		<div id="addcomment" class="a3" style="padding-left: 100px;"></div>
		<div class="clearfix"></div>
		<h1 class="account-in"
			style="background: rgba(0, 0, 0, 0.4); color: white; font-size: 15px; padding-top: 10px; padding-bottom: 10px;">
			<springmess:message code="label.write" />
		</h1>
		<spring:form modelAttribute="comment" id="comment">
			<spring:textarea id="content" path="content" 
				style=" background: rgba(0, 0, 0, 0.4); height: 100px; width:800px " />
			<br>
		</spring:form>
		<button onclick="savecomment(${post.id})" id="cmt"
			class="hvr-shutter-in-vertical hvr-shutter-in-vertical2 ">
			<springmess:message code="label.comment" />
		</button>

	</div>
<br><br>
	<!--end-->



	<jsp:include page="footer.jsp"></jsp:include>
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
						$("#luuthongtin").val("Đã Lưu"),
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
	<script type="text/javascript">
	function savecomment(id) {
	 		var id = id;
			var comment = $("#comment").serialize();
			$.ajax({
				type : "GET",
				contentType : "application/json",
				url : "${pageContext.request.contextPath}/savecomment?id="+id,
				data : comment,
				dataType : 'json',
				timeout : 100000,
				success : function(data) {
					if (data.validated) {
						$("#addcomment").append(data.content);
						$("#content").val("");
					} else {
						alert(data.content);
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
