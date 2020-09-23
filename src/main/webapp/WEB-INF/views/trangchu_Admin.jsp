


<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Admin's Page</title>
        <meta name="viewport" content="width=device-width, initial-scale=1.0" />
        <link rel="stylesheet" href="css/bootstrap.min.css" />
        <link rel="stylesheet" href="css/bootstrap-responsive.min.css" />
        <link rel="stylesheet" href="css/fullcalendar.css" />
        <link rel="stylesheet" href="css/matrix-style.css" />
        <link rel="stylesheet" href="css/matrix-media.css" />
        <link href="font-awesome/css/font-awesome.css" rel="stylesheet" />
        <link rel="stylesheet" href="css/jquery.gritter.css" />
        <link href='http://fonts.googleapis.com/css?family=Open+Sans:400,700,800' rel='stylesheet' type='text/css'>
    </head>
    <body>
        <%--

            Users u = (Users) session.getAttribute("admin");
            if (u == null) {
                response.sendRedirect("404.jsp");
            }
        --%>
        <!--main-container-part-->
        <div id="content" style="background: rgba(0,0,0,0);">
            <!--breadcrumbs-->
            <div id="content-header">
                <div id="breadcrumb" style="background: rgba(0,0,0,0.4);"> <a href="index_Admin.jsp" title="Go to Home" class="tip-bottom"><i class="icon-home"></i> Home</a></div>
            </div>
            <!--End-breadcrumbs-->

            <!--Action boxes-->
            <div class="container-fluid">
                <div class="quick-actions_homepage">
                    <ul class="quick-actions">
                        <li class="bg_lb"> <a href="#"> <i class="icon-dashboard"></i> <span class="label label-important">20</span>Thống Kê </a> </li>
                        <li class="bg_lg span3"> <a href="#"> <i class="icon-signal"></i>Biểu Đồ</a> </li>
                        <li class="bg_ly"> <a href="#"> <i class="icon-inbox"></i><span class="label label-success">101</span> Tiện Ích </a> </li>
                        <li class="bg_lo"> <a href="#"> <i class="icon-th"></i> Bảng Báo Cáo</a> </li>
                        <li class="bg_ls"> <a href="#"> <i class="icon-fullscreen"></i>Mở Rộng Mô Hình</a> </li>
                        <li class="bg_lo span3"> <a href="#"> <i class="icon-th-list"></i>Mục Quản Lý Nhà Đất</a> </li>
                        <li class="bg_ls"> <a href="#"> <i class="icon-tint"></i>Ý Tưởng Cho Web</a> </li>
                        <li class="bg_lb"> <a href="#"> <i class="icon-pencil"></i>Lưu Công Việc</a> </li>
                        <li class="bg_lg"> <a href="#"> <i class="icon-calendar"></i>Lịch Làm Việc </a> </li>
                        <li class="bg_lr"> <a href="#"> <i class="icon-info-sign"></i> Error</a> </li>

                    </ul>
                </div>
                <!--End-Action boxes-->    

                <!--Chart-box-->    
                <div class="row-fluid">
                    <div class="widget-box" style="background: rgba(0,0,0,0);" >
                        <div class="widget-title bg_lg"><span class="icon"><i class="icon-signal"></i></span>
                            <h5>Biểu Đồ</h5>
                        </div>
                        <div class="widget-content" >
                            <div class="row-fluid">
                                <div class="span9">
                                    <div class="chart"></div>
                                </div>
                                <div class="span3">
                                    <ul class="site-stats">
    <!-- đã chỉnh sửa -->                                    <li class="bg_lh" style="background: rgba(0,0,0,0.2);"><i class="icon-user"></i><small>Tổng Cộng<strong></strong> User</small> </li>
                                        <a href="insert_thanhvien_Admin.jsp"><li class="bg_lh" style="background: rgba(0,0,0,0.2);"><i class="icon-plus" ></i> <strong>1</strong> <small>Thêm User</small></li></a>
   <!-- đã chỉnh sửa -->                                     <li class="bg_lh" style="background: rgba(0,0,0,0.2);"><i class="icon-shopping-cart"></i> <strong></strong> <small>Tổng Cộng Bài Đăng</small></li>
   <!-- đã chỉnh sửa -->                                     <li class="bg_lh" style="background: rgba(0,0,0,0.2);"><i class="icon-tag"></i> <strong> </strong> <small>Lượng Bài Đăng Mua</small></li>
    <!-- đã chỉnh sửa -->                                    <li class="bg_lh" style="background: rgba(0,0,0,0.2);"><i class="icon-repeat"></i> <strong></strong> <small>Lượng Bài Đăng Bán</small></li>
                                        <li class="bg_lh" style="background: rgba(0,0,0,0.2);"><i class="icon-globe"></i> <strong>0</strong> <small>Online Users</small></li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <!--End-Chart-box--> 
                <hr/>
            </div>
        </div>
        <script src="js/excanvas.min.js"></script> 
        <script src="js/jquery.min.js"></script> 
        <script src="js/jquery.ui.custom.js"></script> 
        <script src="js/bootstrap.min.js"></script> 
        <script src="js/jquery.flot.min.js"></script> 
        <script src="js/jquery.flot.resize.min.js"></script> 
        <script src="js/jquery.peity.min.js"></script> 
        <script src="js/fullcalendar.min.js"></script> 
        <script src="js/matrix.js"></script> 
        <script src="js/matrix.dashboard.js"></script> 
        <script src="js/jquery.gritter.min.js"></script> 
        <script src="js/matrix.interface.js"></script> 
        <script src="js/matrix.chat.js"></script> 
        <script src="js/jquery.validate.js"></script> 
        <script src="js/matrix.form_validation.js"></script> 
        <script src="js/jquery.wizard.js"></script> 
        <script src="js/jquery.uniform.js"></script> 
        <script src="js/select2.min.js"></script> 
        <script src="js/matrix.popover.js"></script> 
        <script src="js/jquery.dataTables.min.js"></script> 
        <script src="js/matrix.tables.js"></script> 

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
