<%@ page import="com.muabannhadat.constants.Constant"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Menu</title>
<style>
.stat-boxes li a:hover, .quick-actions li a:hover,
	.quick-actions-horizontal li a:hover, .stat-boxes li:hover,
	.quick-actions li:hover, .quick-actions-horizontal li:hover {
	background: rgba(0, 0, 0, 0);
}
</style>
</head>
<body>
	<%--

            Users u = (Users) session.getAttribute("admin");
            if (u == null) {
                response.sendRedirect("404.jsp");
            }
        --%>
	<!--sidebar-menu-->
	<div id="sidebar" style="margin-top: -654px;">
		<a href="#" class="visible-phone"><i class="icon icon-home"></i>
			Thống Kê</a>
		<ul>
			<li class="active"><a href="${pageContext.request.contextPath}/admin/"><i
					class="icon icon-home" style="color: white;"></i> <span
					style="color: white;">Home</span></a></li>
			<li><a
				href="<c:url value='search-statistics?startDate=${Constant.CURRENT_YEAR_MONTH_1ST}&endDate=${Constant.CURRENT_YEAR_MONTH_DAY}'/>"><i
					class="icon icon-signal" style="color: white;"></i> <span
					style="color: white;">Biểu Đồ</span></a></li>
			<li><a href="<c:url value='list-post-news?page=1&limit=2'/>"><i
					class="icon icon-th" style="color: white;"></i> <span
					style="color: white;">Quản Lý Danh Sách Bài Viết </span></a></li>
			<li><a href="<c:url value='list-feedback?page=1&limit=2'/>"><i
					class="icon icon-th" style="color: white;"></i> <span
					style="color: white;">Quản Lý Danh Sách Phản Hồi</span></a></li>
			<li><a href="<c:url value='list-comment?page=1&limit=2'/>"><i
					class="icon icon-th" style="color: white;"></i> <span
					style="color: white;">Quản Lý Danh Sách Bình Luận</span></a></li>
			<li><a href="<c:url value='list-unapproved-post?page=1&limit=2'/>"><i
					class="icon icon-th" style="color: white;"></i> <span
					style="color: white;">Quản Lý Danh Sách Bài Viết Chưa Duyệt</span></a></li>
			<li><a href="<c:url value='list-user?page=1&limit=2'/>"><i
					class="icon icon-th" style="color: white;"></i> <span
					style="color: white;">Quản Lý Tài khoản</span></a></li>
			<li class="content"><span>Monthly Bandwidth Transfer</span>
				<div
					class="progress progress-mini progress-danger active progress-striped">
					<div style="width: 77%;" class="bar"></div>
				</div> <span class="percent">77%</span>
				<div class="stat">21419.94 / 14000 MB</div></li>
			<li class="content"><span>Disk Space Usage</span>
				<div class="progress progress-mini active progress-striped">
					<div style="width: 87%;" class="bar"></div>
				</div> <span class="percent">87%</span>
				<div class="stat">604.44 / 4000 MB</div></li>
		</ul>
	</div>
	<!--sidebar-menu-->
</body>
</html>
