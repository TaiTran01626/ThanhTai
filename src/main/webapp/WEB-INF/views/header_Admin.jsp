<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link href="${pageContext.request.contextPath}/css/style.css" rel="stylesheet" type="text/css" media="all" />
    </head>
    <body>
       
        <!--Header-part-->
        <div id="header" style="background: rgba(0,0,0,0)">
            <h1><a href="<c:url value='/quan-tri/trang-chu'/>">Admin</a></h1>
        </div>
        <!--close-Header-part--> 
        <!--top-Header-menu-->
        <div id="user-nav" class="navbar navbar-inverse">
            <ul class="nav">
                <li  class="dropdown" id="profile-messages" ><a title="" href="#" data-toggle="dropdown" data-target="#profile-messages" class="dropdown-toggle"><i class="icon icon-user"></i>  <span class="text">Welcome,Administrator</span><b class="caret"></b></a>
                    <ul class="dropdown-menu">
                        <li><a href="#"><i class="icon-user"></i>Tài Khoản Của Tôi</a></li>
                        <li class="divider"></li>
                        <li><a href="logout"><i class="icon-key"></i>Đăng Xuất</a></li>
                    </ul>
                </li>
                <li class=""><a title="" href="logout"><i class="icon icon-share-alt"></i> <span class="text">Đăng Xuất</span></a></li>
            </ul>
        </div>
     <%--    <!--close-top-Header-menu-->
        <!--start-top-serch-->
        <div id="search">
        <form action="<c:url value='/admin/search-post-news'/>">
        
            <input type="text" style="background: rgba(0,0,0,0.2);" />
            <button type="submit" title="Search"><i class="icon-search icon-white"></i></button>
            </form>
        </div>
        <!--close-top-serch--> --%>

    </body>
</html>
