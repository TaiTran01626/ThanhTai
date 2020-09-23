<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="spring"
	uri="http://www.springframework.org/tags/form"%>
<%@ page import="com.muabannhadat.utils.SecurityUtils"%>
<%@ taglib prefix="security"
	uri="http://www.springframework.org/security/tags"%>
	<%@taglib uri="http://www.springframework.org/tags" prefix="springmess"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Header</title>
<link href="${pageContext.request.contextPath}/css/style.css"
	rel="stylesheet" type="text/css" media="all" />
<meta name="viewport"
	content="width=device-width,height=device-height,user-scalable=yes, initial-scale=1, minimum-scale=1.0, maximum-scale=3.0">
<link
	href='http://fonts.googleapis.com/css?family=Exo:100,200,300,400,500,600,700,800,900'
	rel='stylesheet' type='text/css'>

<script>
	(function(d, s, id) {
		var js, fjs = d.getElementsByTagName(s)[0];
		if (d.getElementById(id))
			return;
		js = d.createElement(s);
		js.id = id;
		js.src = 'https://connect.facebook.net/vi_VN/sdk.js#xfbml=1&version=v3.2&appId=271903206793496&autoLogAppEvents=1';
		fjs.parentNode.insertBefore(js, fjs);
	}(document, 'script', 'facebook-jssdk'));
</script>
<script>
	window.fbAsyncInit = function() {
		FB.init({
			appId : '{your-app-id}',
			cookie : true,
			xfbml : true,
			version : '{api-version}'
		});

		FB.AppEvents.logPageView();

	};

	(function(d, s, id) {
		var js, fjs = d.getElementsByTagName(s)[0];
		if (d.getElementById(id)) {
			return;
		}
		js = d.createElement(s);
		js.id = id;
		js.src = "https://connect.facebook.net/en_US/sdk.js";
		fjs.parentNode.insertBefore(js, fjs);
	}(document, 'script', 'facebook-jssdk'));
</script>

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
#menu {
	color: white;
}

#s:hover {
	border: 1px solid #00c6d7;
	box-shadow: 0 10px 6px -6px #777;
	color: #00c6d7;
	background: #00c6d7;
}
</style>
</head>
<body>


	<div class="header">
		<div class="header-top" style="background: rgba(0, 0, 0, 0.4);">
			<div class="container">
				<div class="header-top-in">

					<div class="header-in">
						<ul class="icon1 sub-icon1">
							<security:authorize access="isAuthenticated()">
								<li><a href="inforUser"><springmess:message code="label.welcome" />,<%=SecurityUtils.getPrincipal().getFullName()%>
								</a></li>
								<li><a href="logout"><springmess:message code="label.logout" /></a></li>
							</security:authorize>
							<li id="s" style="background: rgba(0, 0, 0, 0.4); color: white;"><a
								id="menu" href="language?lang=vi_VN"><img alt=""
									src="${pageContext.request.contextPath}/images/vi.png"></a></li>
							<li id="s" style="background: rgba(0, 0, 0, 0.4); color: white;"><a
								id="menu" href="language?lang=en_US"><img alt=""
									src="${pageContext.request.contextPath}/images/en.png"></a></li>
						</ul>
					</div>
				</div>
			</div>
		</div>

		<div class="header-bottom" style="background: rgba(0, 0, 0, 0.4);">
			<div class="container">
				<div class="h_menu4">
					<a class="toggleMenu" href="#">Menu</a>
					<ul class="nav">
						<li id="s" class="active" style="background: rgba(0, 0, 0, 0.4)"><a
							href="${pageContext.request.contextPath}/home?page=1&limit=3"
							id="menu"><i> </i><springmess:message code="label.menu1" /></a></li>
						<li id="s"><a href="home" id="menu"><i> </i><springmess:message code="label.menu6" /></a></li>
						<li id="s" class="active" style="background: rgba(0, 0, 0, 0.4)"><a
							href="post_news" id="menu"><i> </i><springmess:message code="label.menu2" /></a></li>
						<li id="s"><a href="inforUser" id="menu"><i> </i><springmess:message code="label.menu7" /></a></li>


					</ul>
					<script type="text/javascript"
						src="${pageContext.request.contextPath}/js/nav.js"></script>
				</div>
			</div>
		</div>
		<div class="header-bottom-in" style="background: rgba(0, 0, 0, 0.4);">
			<div class="container">

				<div class="header-bottom-on">
				<security:authorize access="isAnonymous()">
						<p class="wel" style="color: #white;">
							<span style="color: white;"><springmess:message code="label.hello" /><i class="fas fa-sign-in-alt"></i>
							</span><a href="login" style="color: #white;"><span
								style="color: aqua;"><springmess:message code="label.login" /></span></a><span style="color: white;">
								<springmess:message code="label.or" /> </span><i class="fas fa-sign-in-alt"></i><a href="register"
								style="color: #white;"><span style="color: aqua;"><springmess:message code="label.register" /></span></a>
						</p>
					</security:authorize>

					<div class="clearfix"></div>
				</div>


			</div>
		</div>
	</div>
</body>
</html>
