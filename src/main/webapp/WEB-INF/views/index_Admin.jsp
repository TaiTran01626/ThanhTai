

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
    <head>
        <title>Admin</title>
        <meta charset="UTF-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1.0" />
        <link rel="stylesheet" href="${pageContext.request.contextPath}/css/bootstrap.min.css" />
        <link rel="stylesheet" href="${pageContext.request.contextPath}/css/bootstrap-responsive.min.css" />
        <link rel="stylesheet" href="${pageContext.request.contextPath}/css/fullcalendar.css" />
        <link rel="stylesheet" href="${pageContext.request.contextPath}/css/matrix-style.css" />
        <link rel="stylesheet" href="${pageContext.request.contextPath}/css/matrix-media.css" />
        <link rel="stylesheet" href="${pageContext.request.contextPath}/css/css1.css" />
        <link rel="stylesheet" href="${pageContext.request.contextPath}/css/style_1.css" />
        <link href="${pageContext.request.contextPath}/font-awesome/css/font-awesome.css" rel="stylesheet" />
        <link rel="stylesheet" href="${pageContext.request.contextPath}/css/jquery.gritter.css" />
        <link href='http://fonts.googleapis.com/css?family=Open+Sans:400,700,800' rel='stylesheet' type='text/css'>
    </head>
</head>
<body style="background:url(${pageContext.request.contextPath}/video/bann.jpg) fixed">

    <jsp:include page="header_Admin.jsp" ></jsp:include>
    <%--

        Users u = (Users) session.getAttribute("admin");
        if (u == null) {
            response.sendRedirect("404.jsp");
        }
    --%>
    <jsp:include page="trangchu_Admin.jsp"></jsp:include>
    <jsp:include page="menu_Admin.jsp" ></jsp:include>



    <script src="${pageContext.request.contextPath}/js/excanvas.min.js"></script> 
    <script src="${pageContext.request.contextPath}/js/jquery.min.js"></script> 
    <script src="${pageContext.request.contextPath}/js/jquery.ui.custom.js"></script> 
    <script src="${pageContext.request.contextPath}/js/bootstrap.min.js"></script> 
    <script src="${pageContext.request.contextPath}/js/jquery.flot.min.js"></script> 
    <script src="${pageContext.request.contextPath}/js/jquery.flot.resize.min.js"></script> 
    <script src="${pageContext.request.contextPath}/js/jquery.peity.min.js"></script> 
    <script src="${pageContext.request.contextPath}/js/fullcalendar.min.js"></script> 
    <script src="${pageContext.request.contextPath}/js/matrix.js"></script> 
    <script src="${pageContext.request.contextPath}/js/matrix.dashboard.js"></script> 
    <script src="${pageContext.request.contextPath}/js/jquery.gritter.min.js"></script> 
    <script src="${pageContext.request.contextPath}/js/matrix.interface.js"></script> 
    <script src="${pageContext.request.contextPath}/js/matrix.chat.js"></script> 
    <script src="${pageContext.request.contextPath}/js/jquery.validate.js"></script> 
    <script src="${pageContext.request.contextPath}/js/matrix.form_validation.js"></script> 
    <script src="${pageContext.request.contextPath}/js/jquery.wizard.js"></script> 
    <script src="${pageContext.request.contextPath}/js/jquery.uniform.js"></script> 
    <script src="${pageContext.request.contextPath}/js/select2.min.js"></script> 
    <script src="${pageContext.request.contextPath}/js/matrix.popover.js"></script> 
    <script src="${pageContext.request.contextPath}/js/jquery.dataTables.min.js"></script> 
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
