<%@ page import="com.muabannhadat.constants.Constant"%>
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
<script src="https://cdn.jsdelivr.net/npm/chart.js@2.8.0"></script>
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
			<form action="/WebsiteMuaBanNhaDat/admin/search-statistics" method="get" name="datePicker">
				<input type="date" id="startDate" name="startDate"> <input
					type="date" id="endDate" name="endDate"> <input
					type="submit" value="Tìm kiếm" onclick="doStatistics()">
			</form>

			<div class="container">
				<canvas id="myChart" style=""></canvas>
			</div>

		</div>
		<div class="clear"></div>
	</div>
	<jsp:include page="menu_Admin.jsp"></jsp:include>

	<script type="text/javascript">
		let myChart = document.getElementById('myChart').getContext('2d');
		document.datePicker.startDate.value = '${startDate2}'
		document.datePicker.endDate.value = '${endDate2}'

		// Global Options
		Chart.defaults.global.defaultFontFamily = 'Arial';
		Chart.defaults.global.defaultFontSize = 14;
		Chart.defaults.global.defaultFontColor = '#777';

		let massPopChart = new Chart(myChart, {
			type : 'bar',
			data : {
				labels : ${listDays},
				datasets : [ {
					label : 'VND',
					data : ${listValue},
					backgroundColor:'rgb(50, 168, 82)',
					borderWidth : 1,
					borderColor : '#fff',
					hoverBorderWidth : 3,
					hoverBorderColor : '#000'
				}]
			},
			options :{
				title : {
					display : true,
					text : 'Biểu đồ thống kê doanh thu từ '+'${startDate}' +'đến' +'${endDate}',
					fontSize : 20
				},
				legend : {
					display : true,
					position : 'right',
					labels : {
						fontColor : '#fff'
					}
				},
				layout : {
					padding : {
						left : 50,
						right : 0,
						bottom : 0,
						top : 0
					}
				},
				tooltips : {
					enabled : true
				}
			}
	});	
	</script>
	<script type="text/javascript">
	function doStatistics(){
	var startDate = ""+document.datePicker.startDate.value;
	
	if(startDate ===""){
		startDate = ""+'${Constant.CURRENT_YEAR_MONTH_1ST_URL}';
	}else{
		startDate += "%2000:00:00";
	}
	
	var endDate = ""+document.datePicker.endDate.value;
	if(endDate ===""){
		endDate = ""+'${Constant.CURRENT_YEAR_MONTH_DAY_URL}';
	}else{
		endDate += "%2023:59:59";
	}
	window.location.href = window.location.origin+"/WebsiteMuaBanNhaDat/admin/search-statistics?startDate="+startDate+"&endDate="+endDate;
	}
	</script>


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
</body>
</html>
