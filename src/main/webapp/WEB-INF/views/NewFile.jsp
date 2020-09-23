<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="spring"
	uri="http://www.springframework.org/tags/form"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>content</title>
       
       <link href="${pageContext.request.contextPath}/css/pager.min.css"/>
		<script src="${pageContext.request.contextPath}/js/jquery.twbsPagination.js"></script>
        <script src="${pageContext.request.contextPath}/js/jquery-3.3.1.min.js"></script>
  
   
      
       
    </head>
    <body>
		<ul class="pagination" id="pagination" ></ul>
		<p> gadshg</p>
       <div></div>
</body>
<script>
$(function () {
    window.pagObj = $('#pagination').twbsPagination({
        totalPages: 100,
        visiblePages: 10,
       
        onPageClick: function (event, page) {
        	console.info(page+'(from options)')
        }
    });
});
		</script>
</html>
