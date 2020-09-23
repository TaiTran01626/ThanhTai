
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>product</title>
        <link href="css/bootstrap.css" rel="stylesheet" type="text/css" media="all" />
        <script src="js/jquery.min.js"></script>
        <link href="css/style.css" rel="stylesheet" type="text/css" media="all" />
        <meta name="viewport" content="width=device-width,height=device-height,user-scalable=yes, initial-scale=1, minimum-scale=1.0, maximum-scale=3.0" >
        <script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
        <link href='http://fonts.googleapis.com/css?family=Exo:100,200,300,400,500,600,700,800,900' rel='stylesheet' type='text/css'>
        <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.6.1/css/all.css" />
        <script type="text/javascript" src="js/move-top.js"></script>
        <script type="text/javascript" src="js/easing.js"></script>
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
    </head>
    <body style="background:url(video/bann.jpg) fixed">
        <jsp:include page="header.jsp"></jsp:include>


            <div class="container">
                <div class="content">
                    <div class="content-top">
                        <h3 class="future">Bài Đăng</h3>
                    <%--

                        Cart cart = (Cart) session.getAttribute("cart");
                        if (cart == null) {
                            cart = new Cart();
                            session.setAttribute("cart", cart);
                        }
                        String category_id = "";
                        if (request.getParameter("category") != null) {
                            category_id = request.getParameter("category");
                        }
                        for (ChoThue c : ChoThueDAO.getListChoThueByChapNhan(Integer.parseInt(category_id) )) 
                        {
                    --%>
                    <div class="col-md-3 md-col" style="margin-top:30px;">
                        <div  class="col-md" style="background:rgba(0,0,0,0.4)">
                            <div><i class="fas fa-home" style="color: white;" ><%--=c.getChothue_loainhadat()--%></i><span><i style="padding-left: 53px;float: right;color: white;" class="far fa-calendar-alt"><%--=c.getChothue_ngaydang()--%></i></span></div>
                            <div class="clearfix"></div> 
                            <a href="singleChoThue.jsp?ChoThueID=<%--=c.getChothue_id()--%>"><img  src="<%--=c.getChothue_hinhanh()--%>" style="height: 253px;" alt="<%--=c.getChothue_tieude()--%>" /></a>	
                            <div class="top-content">
                                <h5><a style="color:white;" href="single.jsp?ChoThueID=<%--=c.getChothue_id()--%>"><%--=c.getChothue_tieude()--%></a></h5>
                                <h5 style="padding: 0px;margin-top: -9px;"><i class="fas fa-compass" style="color: white;"><%--=c.getChothue_diadiem()--%></i></h5>
                                <h5 style="padding: 0px;margin-top: 4px;"><i class="fab fa-laravel" style="color:white;padding: 0px;margin-top: -9px;"><%--=c.getChothue_dientich()--%>m<sup>2</sup></i></h5>
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
                                    <p class="dollar"><span><%--=c.getChothue_gia()--%></span><span>Tỷ</span><span class="in-dollar">VNĐ</span></p>
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
    <!---->

    <jsp:include page="footer.jsp"></jsp:include>
</body>
</html>
