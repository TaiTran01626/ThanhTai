


<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Menu</title>
        <style>
            .stat-boxes li a:hover, .quick-actions li a:hover, .quick-actions-horizontal li a:hover, .stat-boxes li:hover, .quick-actions li:hover, .quick-actions-horizontal li:hover
            {
                background: rgba(0,0,0,0);
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
        <div id="sidebar" style="margin-top:-654px;" ><a href="#" class="visible-phone"><i class="icon icon-home"></i> Thống Kê</a>
            <ul>
                <li class="active"><a href="index_Admin.jsp"><i class="icon icon-home" style="color: white;"></i> <span style="color: white;">Home</span></a> </li>
                <li> <a href="#"><i class="icon icon-signal" style="color: white;"></i> <span style="color: white;">Biểu Đồ</span></a> </li>
                <li> <a href="#"><i class="icon icon-inbox" style="color: white;"></i> <span style="color: white;">Tiện Ích</span></a> </li>
                <li><a href="manager_category_Admin.jsp"><i class="icon icon-th" style="color: white;"></i> <span style="color: white;">Quản Lý Danh Mục Bán</span></a></li>
                <li><a href="manager_category_chothue_Admin.jsp"><i class="icon icon-th" style="color: white;"></i> <span style="color: white;">Quản Lý Danh Cho Thuê</span></a></li>
                <li><a href="manager_product_Admin.jsp"><i class="icon icon-th" style="color: white;"></i> <span style="color: white;">Quản Lý Đăng Bài Bán</span></a></li>
                <li><a href="manager_product_chothue.jsp"><i class="icon icon-th" style="color: white;"></i> <span style="color: white;">Quản Lý Đăng Bài Cho Thuê</span></a></li>
                <li><a href="manager_thanhvien_Admin.jsp"><i class="icon icon-th" style="color: white;"></i> <span style="color: white;">Quản Lý Thành Viên</span></a></li>
                <li><a href="#"><i class="icon icon-fullscreen" style="color: white;"></i> <span style="color: white;">Mở Rộng Mô Hình</span></a></li>
                <li><a href="#"><i class="icon icon-tint" style="color: white;"></i> <span style="color: white;">Ý Tưởng Cho Web</span></a></li>
                <li><a href="#"><i class="icon icon-pencil" style="color: white;"></i> <span style="color: white;">Lưu Công Việc</span></a></li>
                <li class="submenu"> <a href="#"><i class="icon icon-file" style="color: white;"></i> <span style="color: white;">Mục Tiêu</span> <span class="label label-important"></span></a>
                </li>
                <li class="content"> <span>Monthly Bandwidth Transfer</span>
                    <div class="progress progress-mini progress-danger active progress-striped">
                        <div style="width: 77%;" class="bar"></div>
                    </div>
                    <span class="percent">77%</span>
                    <div class="stat">21419.94 / 14000 MB</div>
                </li>
                <li class="content"> <span>Disk Space Usage</span>
                    <div class="progress progress-mini active progress-striped">
                        <div style="width: 87%;" class="bar"></div>
                    </div>
                    <span class="percent">87%</span>
                    <div class="stat">604.44 / 4000 MB</div>
                </li>
            </ul>
        </div>
        <!--sidebar-menu-->
    </body>
</html>
