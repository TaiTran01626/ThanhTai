
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>jQuery Pagination plugin</title>
<%--   <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.2/css/bootstrap.min.css">
    <script src="${pageContext.request.contextPath}/js/jquery.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.2/js/bootstrap.min.js"></script> --%>
<script src="${pageContext.request.contextPath}/js/jquery.twbsPagination.js"></script>
</head>
<body>
<div class="container">
    <nav aria-label="Page navigation">
        <ul class="pagination" id="pagination"  style="margin-left: 300px; margin-top: 32px;"></ul>
    </nav>
</div>
 <script>
			var totalPages = ${pageModel.totalPage};
			var currentPage = ${pageModel.page};
			$(function () {
		        window.pagObj = $('#pagination').twbsPagination({
		            totalPages: totalPages,
		            visiblePages: 10,
		            startPage: currentPage,
		            onPageClick: function (event, page) {
		            	if (currentPage != page) {
		            		$('#limit').val(3);
							$('#page').val(page);
							$('#formSubmit').submit();
						
						}
		            }
		        });
		    });
		</script>   
</body>

</html>
