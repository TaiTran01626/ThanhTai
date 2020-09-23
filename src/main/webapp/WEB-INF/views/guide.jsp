<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="spring"
	uri="http://www.springframework.org/tags/form"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Hướng dẫn</title>
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
<script type="text/javascript" src="${pageContext.request.contextPath}/js/move-top.js"></script>
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
.select{
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


</style>
</head>
<body style="background: url(video/bann.jpg) fixed">
	<jsp:include page="header.jsp"></jsp:include>
	<div class="container">
		<div class="container">
			<div class="account">
				<h2 class="account-in">Hướng dẫn đăng tin</h2>
				<div class="a1">
					<div class="a2">
						<p>
						<p style="color: white;">[+] Làm thế nào để đăng tin?</p>
						<p style="color: white;">– Để đăng tin, trước tiên bạn phải có cho mình một tài khoản. 
						Website cung cấp cho bạn trang đăng ký hoặc đăng nhập nằm ở mỗi trang để bạn thuận tiện hơn.<br>
						Sau khi đăng nhập bạn hãy chọn mục Đăng tin trên thanh menu để vào trang.<br>
						Bạn cần cung cấp thông tin về sản phẩm của mình một cách chi tiết, rõ ràng và chính xác. 
						Có thể đưa những hình ảnh nổi trội để chứng minh những mô tả về sản phẩm.<br>
						Đặc biệt, chúng tôi cung cấp cho bạn 2 gói để đăng tin gồm: VIP và THƯỜNG.<br>
							+Phí cho gói VIP là 10.000đ cho 1 ngày(Tin sẽ luôn ở đầu trang )<br>
							+Phí cho gói THƯỜNG là 5.000đ cho 1 ngày(Tin được đăng theo thứ tự)<br>
						Chọn gói VIP bài đăng của bạn sẽ có nhiều khách hàng xem hơn và khả năng mua bán sẽ cao hơn.<br>
						Cuối cùng, bạn chọn Thanh toán để hoàn tất đăng tin.
						</p>
						<p style="color: white; float: right; margin-top: -10px;">Chúc
							bạn mau bán được nhà, đất ! Thân ái,</p>
						<p
							style="color: white; margin-right: -255px; float: right; margin-top: 5px;">
							Doanh Nghiệp Bất Động Sản <strong>Hòn Đá</strong>!
						</p>
						
					</div>
				</div>
				<div></div>
				<h2 class="account-in">Hướng dẫn chung</h2>
				<div class="a1">
					<div class="a2">
						<p>
						<p style="color: white;">[+] Làm thế nào để sử dụng trang web tốt nhất?</p>
						<p style="color: white;">– Để tìm kiếm được tin bạn muốn xem nhanh hơn, 
						bạn có thể sử dụng bộ tìm kiếm theo nhiều phần ở mỗi trang .<br>
						– Nếu bạn phát hiện tin đăng không đúng sự thật, bạn có thể gửi PHẢN HỒI 
						cho chúng tôi bằng cách chọn PHẢN HỒI ở chi tiết mỗi bài đăng.<br>
						– Nếu bạn muốn lưu lại một tin đăng nào đó, để có thể xem lại sau mà không cần phải
						tìm kiếm lại.<br>
						 Hãy chọn LƯU trong chi tiết mỗi bài đăng </p>
						<p style="color: white; float: right; margin-top: -10px;">Chúc
							bạn mau bán được nhà, đất ! Thân ái,</p>
						<p
							style="color: white; margin-right: -255px; float: right; margin-top: 5px;">
							Doanh Nghiệp Bất Động Sản <strong>Hòn Đá</strong>!
						</p>
						
					</div>
				</div>
				
				
				
			

			</div>
		</div>
	</div>
	<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>
