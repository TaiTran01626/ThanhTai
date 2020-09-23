<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml"
	xmlns:th="http://www.thymeleaf.org">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Quản Lý Danh Mục</title>
<meta charset="UTF-8" />
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/css/bootstrap.min.css" />
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/css/bootstrap-responsive.min.css" />
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/css/fullcalendar.css" />
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/css/matrix-style.css" />
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/css/matrix-media.css" />
<link
	href="${pageContext.request.contextPath}/font-awesome/css/font-awesome.css"
	rel="stylesheet" />
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/css/jquery.gritter.css" />

<style>
#danhmuc {
	font-family: "Trebuchet MS", Arial, Helvetica, sans-serif;
	border-collapse: collapse;
	width: 100%;
}

#danhmuc td, #danhmuc th {
	border: 1px solid #ddd;
	padding: 8px;
}

#danhmuc tr:nth-child(even) {
	background: rgba(255, 255, 255, 0.2)
}

#danhmuc tr:hover {
	background-color: #ddd;
}

#danhmuc th {
	padding-top: 12px;
	padding-bottom: 12px;
	text-align: left;
	background-color: rgba(0, 0, 0, 0.8);
	color: white;
}

.fas {
	font-size: 20px;
}

.dlg-container {
	position: absolute;
	left: 50%;
	top: 30%;
	transform: translateX(-50%) translateY(-50%);
	width: 400px;
	background: #fff;
	padding: 10px;
	border: 2px solid #ddd;
	box-shadow: 1px 1px 5px 1px #ccc;
	border-radius: 10px;
	opacity: 1;
	transition: all 0.3 linear 0s;
	z-index: 2;
	display: none;
	background: rgba(0, 0, 0, 0.2);
}

.dlg-container:hover {
	border: 1px solid #00a0df;
}

.dlg-header {
	padding: 10px;
	font-weight: bold;
	background: rgba(0, 0, 0, 0.5);
	color: #f6f7f8;
	border: 1px solid white;
	border-radius: 10px;
}

.dlg-body {
	padding: 10px;
	line-height: 30px;
	color: white;
}

.dlg-footer {
	text-align: center;
	padding: 3px 0;
}

.dlg-footer a {
	display: inline-block;
	width: 100px;
	padding: 5px 0;
	border-radius: 10px;
	background: rgba(0, 0, 0, 0.3);
	cursor: pointer;
	border: 1px solid;
	color: white;
	transition: 0.9s ease;
}

.dlg-footer a:active {
	box-shadow: inset 2px 2px 4px 0 #ccc;
	color: #666;
}

.freeze-layer {
	position: fixed;
	top: 0;
	left: 0;
	width: 100%;
	height: 100%;
	background: rgba(0, 0, 0, 0.9);
	z-index: 1;
}
</style>

</head>
<body
	style="background:url(${pageContext.request.contextPath}/video/bann.jpg) fixed;color:white;">

	<jsp:include page="header_Admin.jsp"></jsp:include>
	<div id="content" style="background: rgba(0, 0, 0, 0)">
		<!--breadcrumbs-->
		<div id="content-header">
			<div id="breadcrumb">
				<a href="index_Admin.jsp" title="Go to Home" class="tip-bottom"><i
					class="icon-home"></i> Home</a>
			</div>
		</div>
		<!--End-breadcrumbs-->
		<!--Start-->
		<div>
			<center>
				<h4 style="color: red;">
					Hướng Dẫn: Các bài chưa được duyệt sẽ không được hiển thị trên
					trang website ; Bấm vào [Đi Duyệt] để đi đến dạng Demo của bài đăng
					chưa được duyệt. Ở đó , bấm vào <span style="color: aqua;">duyệt</span>
					nếu đăng lên website, Và <span style="color: aqua">Hủy Bỏ</span>
					bài đăng để hủy bỏ bài .
				</h4>
			</center>
			<h3 style="color: white;">Danh Sách Bài Đăng Cho Thuê Của Thành
				Viên</h3>
			<form action="<c:url value='/admin/list-user'/>" id="formSubmit"
				method="get">
				<table id="danhmuc">
					<tr style="width: 100%">
						<th>Mã tài khoản</th>
						<th>Tên tài khoản</th>
						<th>Email</th>
						<th>Họ tên</th>
						<th>Ngày sinh</th>
						<th>Số điện thoại</th>
						<th>Địa chỉ</th>
						<th>Quyền</th>
						<th>Trạng thái</th>
						<th>Công cụ</th>
					</tr>
					<c:forEach items="${model.usersEntities}" var="user">
						<tr>
						<td>${user.id}</td>
						<td>${user.username}</td>
						<td>${user.email}</td>
						<td>${user.fullname}</td>
						<td>${user.birthday}</td>
						<td>${user.phone}</td>
						<td>${user.address}</td>
						<c:forEach items="${user.role}" var="role">
							<td>${role.code}</td>
						</c:forEach>
						<c:choose>
							<c:when test="${user.status==0}">
								<td>Ẩn</td>
							</c:when>
							<c:when test="${user.status==1}">
								<td>Hiển thị</td>
							</c:when>


						</c:choose>
						<td><span><a href="delete-user?id=${user.id}"><i
									class="fas fa-trash-alt">Xóa</i></a></span></td>

						</tr>

					</c:forEach>

				</table>
				<input type="hidden" value="" id="page" name="page" /> <input
					type="hidden" value="" id="limit" name="limit" />
				<jsp:include page="NewFile1.jsp"></jsp:include>
			</form>
		</div>
		<div class="clear"></div>
	</div>
	<jsp:include page="menu_Admin.jsp"></jsp:include>
	<script src="${pageContext.request.contextPath}/js/jquery.min.js"></script>
	<script
		src="${pageContext.request.contextPath}/js/jquery.twbsPagination.js"></script>
	<script src="${pageContext.request.contextPath}/js/excanvas.min.js"></script>
	<script src="${pageContext.request.contextPath}/js/jquery.ui.custom.js"></script>
	<script src="${pageContext.request.contextPath}/js/bootstrap.min.js"></script>
	<script src="${pageContext.request.contextPath}/js/jquery.flot.min.js"></script>
	<script
		src="${pageContext.request.contextPath}/js/jquery.flot.resize.min.js"></script>
	<script src="${pageContext.request.contextPath}/js/jquery.peity.min.js"></script>
	<script src="${pageContext.request.contextPath}/js/fullcalendar.min.js"></script>
	<script src="${pageContext.request.contextPath}/js/matrix.js"></script>
	<script src="${pageContext.request.contextPath}/js/matrix.dashboard.js"></script>
	<script
		src="${pageContext.request.contextPath}/js/jquery.gritter.min.js"></script>
	<script src="${pageContext.request.contextPath}/js/matrix.interface.js"></script>
	<script src="${pageContext.request.contextPath}/js/matrix.chat.js"></script>
	<script src="${pageContext.request.contextPath}/js/jquery.validate.js"></script>
	<script
		src="${pageContext.request.contextPath}/js/matrix.form_validation.js"></script>
	<script src="${pageContext.request.contextPath}/js/jquery.wizard.js"></script>
	<script src="${pageContext.request.contextPath}/js/jquery.uniform.js"></script>
	<script src="${pageContext.request.contextPath}/js/select2.min.js"></script>
	<script src="${pageContext.request.contextPath}/js/matrix.popover.js"></script>
	<script
		src="${pageContext.request.contextPath}/js/jquery.dataTables.min.js"></script>
	<script src="${pageContext.request.contextPath}/js/matrix.tables.js"></script>

	<script type="text/javascript">
		// This function is called from the pop-up menus to transfer to
		// a different page. Ignore if the value returned is a null string:
		function goPage(newURL) {

			// if url is empty, skip the menu dividers and reset the menu selection to default
			if (newURL != "") {

				// if url is "-", it is this page -- reset the menu:
				if (newURL == "-") {
					resetMenu();
				}
				// else, send page to designated URL            
				else {
					document.location.href = newURL;
				}
			}
		}

		// resets the menu selection upon entry to this page:
		function resetMenu() {
			document.gomenu.selector.selectedIndex = 2;
		}
	</script>
</body>
</html>
