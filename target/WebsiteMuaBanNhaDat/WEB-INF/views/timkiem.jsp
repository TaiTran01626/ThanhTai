
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Tìm Kiếm Nhà, Đất</title>
        <link href="css/bootstrap.css" rel="stylesheet" type="text/css" media="all" />
        <script src="js/jquery.min.js"></script>
        <link href="css/style.css" rel="stylesheet" type="text/css" media="all" />
        <meta name="viewport" content="width=device-width,height=device-height,user-scalable=yes, initial-scale=1, minimum-scale=1.0, maximum-scale=3.0" >
        <script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
        <link href='http://fonts.googleapis.com/css?family=Exo:100,200,300,400,500,600,700,800,900' rel='stylesheet' type='text/css'>
        <script type="text/javascript" src="js/move-top.js"></script>
        <script type="text/javascript" src="js/easing.js"></script>
        <script type="text/javascript">
            jQuery(document).ready(function ($)
            {
                $(".scroll").click(function (event)
                {
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
        <script>$(document).ready(function (c)
            {
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
                        <h3 class="future">Tìm Kiếm Rao Bán</h3>
                        <div class="content-top-in">
                        <%
                            request.setCharacterEncoding("utf-8");
                            response.setCharacterEncoding("utf-8");
                            String s = request.getParameter("tim");
                        %>
                        <%--
                            for (Product p : ProductDAO.getTimKiem(s)) {
                        --%>
                        <div class="col-md-3 md-col" style="margin-top:33px;">
                            <div class="col-md">
                                <a href="single.jsp?productID=<%--=p.getProductID()--%>"><img  src="<%--=p.getProductImage()--%>" alt="<%--=p.getProductName()--%>" /></a>	
                                <div class="top-content">
                                    <h5><a href="single.jsp?productID=<%--=p.getProductID()--%>"><%--=p.getProductName()--%></a></h5>
                                    <div class="white">
                                        <a href="CartServlet?command=plus&productID=<%--=p.getProductID()--%>" class="hvr-shutter-in-vertical hvr-shutter-in-vertical2 ">Lưu Thông Tin</a>
                                        <p class="dollar"><span><%--=p.getProductPrice()--%></span><span>Tỷ</span><span class="in-dollar">VNĐ</span></p>
                                        <div class="clearfix"></div>
                                    </div>
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
        <ul class="start" style="margin-left: 564px;margin-top: 32px;">
            <li ><a href="#"><i></i></a></li>
            <li><span>1</span></li>
            <li ><a href="#"><i  class="next"> </i></a></li>
        </ul>
        <jsp:include page="footer.jsp"></jsp:include>
    </body>
</html>
