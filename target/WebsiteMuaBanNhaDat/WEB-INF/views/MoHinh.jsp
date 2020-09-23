


<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Thông Tin Sản Phẩm</title>
        <link href="css/bootstrap.css" rel="stylesheet" type="text/css" media="all" />
        <script src="js/jquery.min.js"></script>
        <link href="css/style.css" rel="stylesheet" type="text/css" media="all" />
        <meta name="viewport" content="width=device-width,height=device-height,user-scalable=yes, initial-scale=1, minimum-scale=1.0, maximum-scale=3.0" >
        <script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
        <link href='http://fonts.googleapis.com/css?family=Exo:100,200,300,400,500,600,700,800,900' rel='stylesheet' type='text/css'>
        <script type="text/javascript" src="js/move-top.js"></script>
        <script type="text/javascript" src="js/easing.js"></script>
        <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.4.2/css/all.css" />
        <script type="text/javascript">
            jQuery(document).ready(function ($)
            {
                $(".scroll").click(function (event) {
                    event.preventDefault();
                    $('html,body').animate({scrollTop: $(this.hash).offset().top}, 1000);
                });
            });
        </script>
        <!--slider-script-->
        <script src="js/responsiveslides.min.js"></script>
        <script>
            $(function ()
            {
                $("#slider1").responsiveSlides({
                    auto: true,
                    speed: 100,
                    namespace: "callbacks",
                    pager: true,
                });
            });
        </script>
        <!--//slider-script-->
        <script>$(document).ready(function (c) {
                $('.alert-close').on('click', function (c) {
                    $('.message').fadeOut('slow', function (c) {
                        $('.message').remove();
                    });
                });
            });
        </script>
        <script>$(document).ready(function (c) {
                $('.alert-close1').on('click', function (c) {
                    $('.message1').fadeOut('slow', function (c) {
                        $('.message1').remove();
                    });
                });
            });
        </script>
        <style>
            .a1
            {
                width:100%;
                height:auto;
                margin-bottom: 50px;
            }
            .a1 .a2
            {
                width:80%;
                height:auto;
                margin: 0 auto;
            }
            #inline
            {
                display: inline;
            }
        </style>
    </head>
    <body style="background:url(video/bann.jpg) fixed">
        <%--

            ChoThue c = ChoThueDAO.getChoThueByID(Integer.parseInt(request.getParameter("ChoThueID")));

        --%>
        <%--
            Users u = (Users) session.getAttribute("admin");
            if (u == null) {
                response.sendRedirect("404.jsp");
            }
        --%>
        <jsp:include page="header.jsp"></jsp:include>
            <div>
                  <center><p style="color:aquamarine;font-size: 50px;margin-top: 44px;">DEMO</p></center>
                  <center><a href="manager_product_chothue.jsp" style="color: white;font-size: 20px;border: 1px solid white;width: 100px;border-radius: 6px;"><p>Trở Lại</p></a></center>
            </div>
            <div class="a1">
                <div class="a2">
                    <div style="float: right;position: relative;margin-top: 23px;margin-right: 6px;font-size: 20px;">
                        <p><i style="padding-left: 53px;float: right;color: white;" class="far fa-calendar-alt">Ngày Đăng Bài:<%--=c.getChothue_ngaydang()--%></i></span></p>
                </div>
                <div class="single">
                    <div>
                        <a href="#">
                            <img class="a2-1" style="border: 2px solid #312f2c;float: left;height: 324px;width: 576px;" src="<%--=c.getChothue_hinhanh()--%>" alt="" >
                        </a>
                    </div>

                    <div class="as">

                        <p style="font-size: 28px;color: white;padding-left:729px;background-color:rgba(0,0,0,0.4);;border-top-right-radius: 45px;">Thông Tin Liên Hệ<p>
                        <div>
                            <div style="border: 2px solid #00c6d7;border-top-right-radius: 23px;color: white;"><p style="padding-left:591px;font-size:18px;"><i class="far fa-caret-square-up"></i><strong>Tiêu Đề</strong><span style="margin-left:166px;"><%--=c.getChothue_tieude()--%></span> </p></div>
                            <div style="border: 2px solid #00c6d7;border-top-right-radius: 23px;color: white;"><p style="padding-left:591px;font-size:18px;"><i class="fas fa-money-bill"></i><strong>Giá</strong><span style="margin-left:197px;"><%--=c.getChothue_gia()--%> Tỷ VNĐ</span></p></div>
                            <div style="border: 2px solid #00c6d7;border-top-right-radius: 23px;color: white;"><p style="padding-left:591px;font-size:18px;"><i class="fab fa-laravel"></i><strong>Diện Tích</strong><span style="margin-left:147px;"><%--=c.getChothue_dientich()--%>m<sup>2</sup></span></p></div>

                            <div style="border: 2px solid #00c6d7;border-top-right-radius: 23px;color: white;"><p style="padding-left:591px;font-size:18px;"><i class="fab fa-acquisitions-incorporated"></i><strong>Loại Nhà Đất</strong><span style="margin-left:129px;"><%--=c.getChothue_loainhadat()--%></span></p></div>
                            <div style="border: 2px solid #00c6d7;border-top-right-radius: 23px;color: white;"><p style="padding-left:591px;font-size:18px;"><i class="fab fa-d-and-d"></i><strong>Đường Trước Nhà</strong><span style="margin-left:83px;"><%--=c.getChothue_duongtruocnha()--%>m<sup>2</sup></span></p></div>
                            <div style="border: 2px solid #00c6d7;border-top-right-radius: 23px;color: white;"><p style="padding-left:591px;font-size:18px;"><i class="fas fa-adjust"></i><strong>Mặt Tiền</strong><span style="margin-left:157px;"><%--=c.getChothue_matien()--%>m<sup>2</sup></span></p></div>
                            <div style="border: 2px solid #00c6d7;border-top-right-radius: 23px;color: white;"><p style="padding-left:591px;font-size:18px;"><i class="fab fa-accusoft"></i><strong>Hướng Nhà</strong><span style="margin-left:134px;"><%--=c.getChothue_huongnha()--%></span></p></div>
                            <div style="border: 2px solid #00c6d7;border-top-right-radius: 23px;color: white;"><p style="padding-left:591px;font-size:18px;"><i class="fab fa-alipay"></i><strong>Số Tầng</strong><span style="margin-left:165px;"><%--=c.getChothue_sotang()--%></span></p></div>
                            <div style="border: 2px solid #00c6d7;border-top-right-radius: 23px;color: white;"><p style="padding-left:591px;font-size:18px;"><i class="fab fa-500px"></i><strong>Số Phòng</strong><span style="margin-left:161px;"><%--=c.getChothue_sophong()--%></span></p></div>
                            <div style="border: 2px solid #00c6d7;border-top-right-radius: 23px;color: white;"><p style="padding-left:591px;font-size:18px;"><i class="fab fa-penny-arcade"></i><strong>Số Toilet</strong><span style="margin-left:161px;"><%--=c.getChothue_sotoilet()--%></span></p></div>
                            <div style="border: 2px solid #00c6d7;border-top-right-radius: 23px;color: white;"><p style="padding-left:591px;font-size:18px;"><i class="fab fa-android"></i><strong>Địa Điểm</strong><span style="margin-left:160px;"><%--=c.getChothue_diadiem()--%></span></p></div>
                            <div style="border: 2px solid #00c6d7;border-top-right-radius: 23px;color: white;"><p style="padding-left:591px;font-size:18px;"><i class="fas fa-address-book"></i><strong>Họ Tên Người Đăng</strong><span style="margin-left:72px;"><%--=c.getChothue_hoten()--%></span></p></div>
                            <div style="border: 2px solid #00c6d7;border-top-right-radius: 23px;color: white;"><p style="padding-left:591px;font-size:18px;"><i class="fas fa-phone-square"></i><strong>Số Điện Thoại</strong><span style="margin-left:117px;"><%--=c.getChothue_dienthoai()--%></span></p></div>
                            <div style="border: 2px solid #00c6d7;border-top-right-radius: 23px;height: auto;color: white;"><p style="padding-left:591px;font-size:18px;"><i class="fas fa-compass"></i><strong>Vị Trí Người Đăng</strong><span style="margin-left:185px;"><%--=c.getChothue_diachi()--%></span></p></div>
                        </div>

                        <div class="top-content" style="float: right;position: relative;margin-top: -86px;">
                            <div class="white" style="line-height: 17px;margin-left: 383px;margin-top: 87px;">
                                <%--
                                    Cart cart = (Cart) session.getAttribute("cart");
                                    if (!cart.getCartItems().containsKey(c.getChothue_id())) {
                                --%>
                                <a  href="#" id="luuthongtinchothue" class="hvr-shutter-in-vertical hvr-shutter-in-vertical2 ">Lưu Thông Tin</a>
                                <%--
                                } else {
                                --%>
                                <a href=""  style="cursor:unset;background:black;line-height: 17px;margin-left: 383px;margin-top: 3px;" id="luuthongtin" class="hvr-shutter-in-vertical hvr-shutter-in-vertical2">Đã Lưu</a>
                                <%--
                                    }
                                --%>
                                <script type="text/javascript">
                                    $(function ()
                                    {
                                        $("#luuthongtinchothue").click(function ()
                                        {
                                            if (confirm("Chức năng Lưu ở mục Cho Thuê này tạm thời khóa"))
                                            {
                                                window.location.reload(true);
                                            }
                                        });
                                    });
                                </script>
                                <div class="clearfix"></div>
                            </div>
                        </div>

                    </div>
                    <div class="clearfix"> </div>    
                </div>
                <div class="as1" style="border: 2px solid black;height: auto;" >
                    <p style="background:rgba(0,0,0,0.4);color: white;font-size: 25px;padding-left: 486px;padding-top: 10px;padding-bottom: 10px;">Mô tả chi tiết</p>
                    <p style="padding-left: 26px;padding-right:26px;font-size:20px;color:white;"><%--=c.getChothue_mota()--%></p>
                    <div class="clearfix"> </div>
                    <img style="border:2px solid #312f2c;height:508px;width:737px;margin-left:201px;margin-top:25px;margin-bottom:25px;" src="<%--=c.getChothue_hinhanh()--%>" alt="" >
                </div>

                <div class="clearfix"> </div>
                <div style="margin-top: 56px;border: 1px solid white;background: rgba(255,255,255, 0.3);">
                    <div class="fb-comments" data-href="http://localhost:8081/MuaBanNha/single.jsp?productID=<%=request.getParameter("productID")%>" data-width="700" data-numposts="5"></div><div>
                    </div>
                </div>

                <!--start cung khoang gia-->    
                <div id="in-line" class="container" style="margin-top: 60px;margin-left: -138px;width: 1303px;">
                    <div class="content">
                        <div class="content-top" style="float:left;">
                            <h3 class="future" style="color:white;">Bài Đăng Cùng Khoảng Giá</h3>
                            <div class="content-top-in" style="width:932px;">
                                <%--
                                    request.setCharacterEncoding("UTF-8");
                                    response.setCharacterEncoding("UTF-8");
                                    for (ChoThue cc : ChoThueDAO.getProductSamePrice(c.getChothue_gia())) {
                                --%>
                                <div class="col-md-3 md-col" style="margin-top:30px;width: 285px;">
                                    <div  class="col-md" style="background:rgba(0,0,0,0.4)">
                                        <div><i class="fas fa-home" style="color: white;" ><%--=c.getChothue_loainhadat()--%></i><span><i style="padding-left: 53px;float: right;color: white;" class="far fa-calendar-alt"><%--=c.getChothue_ngaydang()--%></i></span></div>
                                        <div class="clearfix"></div> 
                                        <a href="singleChoThue.jsp?ChoThueID=<%--=cc.getChothue_id()--%>"><img  src="<%--=cc.getChothue_hinhanh()--%>" style="height: 253px;" alt="<%--=cc.getChothue_tieude()%>" /></a>	
                                        <div class="top-content">
                                            <h5><a style="color:white;" href="single.jsp?ChoThueID=<%--=cc.getChothue_id()--%>"><%--=cc.getChothue_tieude()--%></a></h5>
                                            <h5 style="padding: 0px;margin-top: -9px;"><i class="fas fa-compass" style="color: white;"><%--=cc.getChothue_diadiem()--%></i></h5>
                                            <h5 style="padding: 0px;margin-top: 4px;"><i class="fab fa-laravel" style="color:white;padding: 0px;margin-top: -9px;"><%--=cc.getChothue_dientich()--%>m<sup>2</sup></i></h5>
                                            <%--
                                                Users users = null;
                                                if (session.getAttribute("user") != null) {
                                                    users = (Users) session.getAttribute("user");
                                                }
                                                if (users != null) {
                                            --%>
                                            <div class="white">
                                                <%--
                                                    if (!cart.getCartItems().containsKey(c.getChothue_id())) {
                                                --%>
                                                <a href="#" id="luuthongtinchothue" class="hvr-shutter-in-vertical hvr-shutter-in-vertical2">Lưu Thông Tin</a>
                                                <%--
                                                } else {
                                                --%>
                                                <a href="#" style="cursor:unset;background:black;" id="luuthongtin" class="hvr-shutter-in-vertical hvr-shutter-in-vertical2">Đã Lưu</a>
                                                <%--
                                                    }
                                                --%>
                                                <p class="dollar"><span><%--=cc.getChothue_gia()--%></span><span>Tỷ</span><span class="in-dollar">VNĐ</span></p>
                                                <div class="clearfix"></div>
                                            </div>
                                            <%--
                                                }
                                            --%>
                                            <script type="text/javascript">
                                                $(function ()
                                                {
                                                    $("#luuthongtinchothue").click(function ()
                                                    {
                                                        if (confirm("Chức năng Lưu ở mục Cho Thuê này tạm thời khóa"))
                                                        {
                                                            window.location.reload(true);
                                                        }
                                                    });
                                                });
                                            </script>
                                        </div>							
                                    </div>
                                </div>
                                <%--
                                    }
                                --%>

                                <div class="clearfix"></div>
                            </div>
                        </div>
                        <div style="margin-top: 113px;" id="in-line" class="fb-page" data-href="https://www.facebook.com/B%E1%BA%A5t-%C4%90%E1%BB%99ng-S%E1%BA%A3n-%C4%90%C3%A0-N%E1%BA%B5ng-519251811915881/?modal=admin_todo_tour" data-tabs="timeline" 
                             data-small-header="true" data-adapt-container-width="true" data-hide-cover="false" 
                             data-show-facepile="true"><blockquote cite="https://www.facebook.com/B%E1%BA%A5t-%C4%90%E1%BB%99ng-S%E1%BA%A3n-%C4%90%C3%A0-N%E1%BA%B5ng-519251811915881/?modal=admin_todo_tour" 
                                                              class="fb-xfbml-parse-ignore"><a href="https://www.facebook.com/B%E1%BA%A5t-%C4%90%E1%BB%99ng-S%E1%BA%A3n-%C4%90%C3%A0-N%E1%BA%B5ng-519251811915881/?modal=admin_todo_tour">Facebook</a></blockquote>
                        </div>
                    </div>
                </div>
                <!--end-->
                <!--start cùng loại-->
                <div class="container" style="margin-top: 60px;">
                    <div class="content">
                        <div class="content-top">
                            <h3 class="future" style="color:white;">Bài Đăng Cùng Loại</h3>
                            <div class="content-top-in">
                                <%--
                                    request.setCharacterEncoding("UTF-8");
                                    response.setCharacterEncoding("UTF-8");
                                    for (ChoThue c2 : ChoThueDAO.getProductSameTieuDe(c.getChothue_tieude())) {
                                --%>
                                <div class="col-md-3 md-col" style="margin-top:30px;">
                                    <div  class="col-md" style="background:rgba(0,0,0,0.4)">
                                        <div><i class="fas fa-home" style="color: white;" ><%--=c2.getChothue_loainhadat()--%></i><span><i style="padding-left: 53px;float: right;color: white;" class="far fa-calendar-alt"><%--=c2.getChothue_ngaydang()--%></i></span></div>
                                        <div class="clearfix"></div> 
                                        <a href="singleChoThue.jsp?ChoThueID=<%--=c2.getChothue_id()--%>"><img  src="<%--=c2.getChothue_hinhanh()--%>" style="height: 253px;" alt="<%--=c2.getChothue_tieude()--%>" /></a>	
                                        <div class="top-content">
                                            <h5><a style="color:white;" href="single.jsp?ChoThueID=<%--=c2.getChothue_id()--%>"><%--=c2.getChothue_tieude()--%></a></h5>
                                            <h5 style="padding: 0px;margin-top: -9px;"><i class="fas fa-compass" style="color: white;"><%--=c2.getChothue_diadiem()--%></i></h5>
                                            <h5 style="padding: 0px;margin-top: 4px;"><i class="fab fa-laravel" style="color:white;padding: 0px;margin-top: -9px;"><%--=c2.getChothue_dientich()--%>m<sup>2</sup></i></h5>
                                            <%--
                                                Users users = null;
                                                if (session.getAttribute("user") != null) {
                                                    users = (Users) session.getAttribute("user");
                                                }
                                                if (users != null) {
                                            --%>
                                            <div class="white">
                                                <%--
                                                    if (!cart.getCartItems().containsKey(c.getChothue_id())) {
                                                --%>
                                                <a href="#" id="luuthongtinchothue" class="hvr-shutter-in-vertical hvr-shutter-in-vertical2">Lưu Thông Tin</a>
                                                <%--
                                                } else {
                                                --%>
                                                <a href="#" style="cursor:unset;background:black;" id="luuthongtin" class="hvr-shutter-in-vertical hvr-shutter-in-vertical2">Đã Lưu</a>
                                                <%--
                                                    }
                                                --%>
                                                <p class="dollar"><span><%--=c2.getChothue_gia()--%></span><span>Tỷ</span><span class="in-dollar">VNĐ</span></p>
                                                <div class="clearfix"></div>
                                            </div>
                                            <%--
                                                }
                                            --%>
                                            <script type="text/javascript">
                                                $(function ()
                                                {
                                                    $("#luuthongtinchothue").click(function ()
                                                    {
                                                        if (confirm("Chức năng Lưu ở mục Cho Thuê này tạm thời khóa"))
                                                        {
                                                            window.location.reload(true);
                                                        }
                                                    });
                                                });
                                            </script>
                                        </div>							
                                    </div>
                                </div>
                                <%--
                                    }
                                --%>
                                <div class="clearfix"></div>
                            </div>
                        </div>
                    </div>
                </div>
                <!--end-->
                <!--Controll-->
                <div>
                    <div id="dialogCont" class="dlg-container">
                        <div class="dlg-header"><i class="fas fa-exclamation-triangle">Xác Nhận Bài Duyệt</i></div>
                        <div id="dlgBody" class="dlg-body">Duyệt bài này?</div>
                        <div class="dlg-footer">
                            <a href="DuyetBai?command=duyet&ChoThueID=<%=request.getParameter("ChoThueID")%>" style="margin-left: 4px;" ><i class="fas fa-user-times" style="margin-left:2px;">Duyệt</i></a>
                            <a href="DuyetBai?command=xoa&ChoThueID=<%=request.getParameter("ChoThueID")%>" style="margin-left: 56px;" ><i class="fas fa-times-circle">Hủy Bỏ</i></a>
                        </div>
                    </div>
                </div>
                <style>
                    .dlg-container
                    {
                        position:fixed;
                        bottom : -64px;
                        right: -80px;
                        transform: translateX(-50%) translateY(-50%);
                        width:300px;
                        overflow: hidden;
                        background:#fff;
                        padding:10px;
                        border:2px solid #ddd;
                        box-shadow:1px 1px 5px 1px #ccc;
                        border-radius:10px;
                        opacity:1;
                        transition:all 0.3 linear 0s;
                        z-index: 2;
                        background: rgba(0,0,0,0.2);
                    }
                    .dlg-container:hover
                    {
                        border:1px solid #00a0df;

                    }

                    .dlg-header
                    {
                        padding: 10px;
                        font-weight: bold;
                        background: rgba(0,0,0,0.5);
                        color: #f6f7f8;
                        border: 1px solid white;
                        border-radius: 10px;

                    }
                    .dlg-body
                    {
                        padding:10px;
                        line-height:30px;
                        color: white;
                    }
                    .dlg-footer
                    {
                        text-align:center;
                        padding : 3px 0;
                    }
                    .dlg-footer a
                    {
                        display:inline-block;
                        width:100px;
                        padding:5px 0;
                        border-radius:10px;
                        background: rgba(0,0,0,0.3);
                        cursor : pointer;
                        border: 1px solid;
                        color: white;
                        transition: 0.9s ease;
                    }
                    .dlg-footer a:active
                    {
                        box-shadow: inset 2px 2px 4px 0 #ccc;
                        color:#666;
                    }
                </style>

                <!---->
            </div>
        </div>
    </div>
</div>
</div>
<jsp:include page="footer.jsp"></jsp:include>

</body>
</html>
