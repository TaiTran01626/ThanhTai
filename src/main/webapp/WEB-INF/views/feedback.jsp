<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="spring"
	uri="http://www.springframework.org/tags/form"%>
<%@taglib uri="http://www.springframework.org/tags" prefix="springmess"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="https://fonts.googleapis.com/icon?family=Material+Icons" />
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
	border: 3px solid #888;
	font-size: 14px;
	align-content:center,space-around;
	width: 40%;
	height: 30%;
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

@font-face {
	font-family: 'Material Icons';
	font-style: normal;
	font-weight: 400;
	src:
		url(https://fonts.gstatic.com/s/materialicons/v54/flUhRq6tzZclQEJ-Vdg-IuiaDsNc.woff2)
		format('woff2');
}

.material-icons {
	font-family: 'Material Icons';
	font-weight: normal;
	font-style: normal;
	font-size: 24px;
	line-height: 1;
	letter-spacing: normal;
	text-transform: none;
	display: inline-block;
	white-space: nowrap;
	word-wrap: normal;
	direction: ltr;
	-webkit-font-feature-settings: 'liga';
	-webkit-font-smoothing: antialiased;
}
</style>
</head>
<body>


	<!-- Trigger/Open The Modal -->
	<button id="myBtn"
		style="background: rgba(0, 0, 0, 0.4);; color: #f7921d; font-size: 15px; float: right; margin-right: 60px;">
		Feedback <i class="material-icons" style="color: red"></i>

	</button>

	<!-- The Modal -->
	<div id="myModal" class="modal">

		<!-- Modal content -->
		<div class="modal-content" style="background: gray">
			<span class="close">&times;</span>
			<p>
				<springmess:message code="label.feedback" />
			</p>
			<spring:form modelAttribute="feedback" name="feedback" id="feedback">
			<div class="container">
				<div class=row>
					<div class="col-md-5" style="color: #f7921d;">
						<div class="col-md-6" style="">
							<spring:radiobuttons path="type.id" itemValue="id" id="type" 
								items="${feedbacktype}" itemLabel="name"  /><br>
						</div>
					</div>
			          </div>
					
				</div>
			</spring:form>
			<div style="padding-left: 40px;">
			<button onclick="savefeedback(${post.id})" id="cmt"
				class="hvr-shutter-in-vertical hvr-shutter-in-vertical2 ">
				<springmess:message code="label.btnFeedback" />
			</button>
			</div>

		</div>

	</div>

	<script>
		// Get the modal
		var modal = document.getElementById("myModal");

		// Get the button that opens the modal
		var btn = document.getElementById("myBtn");

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
	<script type="text/javascript">
	function savefeedback(id) {
	 		var id = id;
			var feedback = $("#feedback").serialize();
			$.ajax({
				type : "GET",
				contentType : "application/json",
				url : "${pageContext.request.contextPath}/savefeedback?id="+id,
				data : feedback,
				dataType : 'json',
				timeout : 100000,
				success : function(data) {
					if (data.validated) {
						alert(data.message);
						window.location="${pageContext.request.contextPath}/user/";
					} else {
						alert(data.message);
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