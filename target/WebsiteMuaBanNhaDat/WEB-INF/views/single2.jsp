


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

        </style>
    </head>
    <body>
        <%--

            ProductDAO p = new ProductDAO();
            Product p2 = new Product();
            String productID2 = "";
            if (request.getParameter("productID") != null) {
                productID2 = request.getParameter("productID");
                p2 = ProductDAO.getProduct(Long.parseLong(productID2));
            }
        --%>
        <jsp:include page="header.jsp"></jsp:include>
            <div class="a1">
                <div class="a2">
                    <div class="single">
                        <div>
                            <a href="#">
                                <img class="a2-1" style="border: 2px solid #312f2c;float: left;height: 324px;width: 576px;" src="<%--=p2.getProductImage()--%>" alt="" >
                        </a>
                    </div>	
                    <div class="as">
                        <p style="font-size: 28px;color: #f7921d;padding-left:729px;">Thông Tin Liên Hệ<p>
                        <div>
                            <div style="border: 2px solid #f7921d;border-top-right-radius: 23px;"><p style="padding-left:591px;font-size:18px;"><strong>Tiêu Đề</strong><span style="margin-left:170px;"><%--=p2.getProductName()--%></span> </p></div>
                            <div style="border: 2px solid #f7921d;border-top-right-radius: 23px;"><p style="padding-left:591px;font-size:18px;"><strong>Giá</strong><span style="margin-left:203px;"><%--=p2.getProductPrice()--%> Tỷ VNĐ</span></p></div>
                            <div style="border: 2px solid #f7921d;border-top-right-radius: 23px;"><p style="padding-left:591px;font-size:18px;"><strong>Diện Tích</strong><span style="margin-left:152px;"><%--=p2.getDientich()--%>m<sup>2</sup></span></p></div>
                            <div style="border: 2px solid #f7921d;border-top-right-radius: 23px;"><p style="padding-left:591px;font-size:18px;"><strong>Họ Tên Người Đăng</strong><span style="margin-left:72px;"><%--=p2.getHoten()--%></span></p></div>
                            <div style="border: 2px solid #f7921d;border-top-right-radius: 23px;"><p style="padding-left:591px;font-size:18px;"><strong>Số Điện Thoại</strong><span style="margin-left:117px;"><%--=p2.getSdt()--%></span></p></div>
                            <div style="border: 2px solid #f7921d;border-top-right-radius: 23px;height: auto;"><p style="padding-left:591px;font-size:18px;"><strong>Vị Trí</strong><span style="margin-left:185px;"><%--=p2.getVitri()--%></span></p></div>
                        </div>
                    </div>
                    <div class="clearfix"> </div>    
                </div>
                <div class="as1" style="border: 2px solid #f7921d;height: auto;" >
                    <p style="background: #f7921d;color: white;font-size: 25px;padding-left: 486px;padding-top: 10px;padding-bottom: 10px;">Mô tả chi tiết</p>
                    <p style="padding-left: 26px;padding-right:26px;font-size:20px;"><%--=p2.getProductDescription()--%></p>
                    <div class="clearfix"> </div>
                    <img style="border:2px solid #312f2c;height:324px;width:737px;margin-left:201px;margin-top:25px;margin-bottom:25px;" src="<%--=p2.getProductImage()--%>" alt="" >
                </div>
                <div class="clearfix"> </div>
            </div>
        </div>
    </div>
</div>
</div>
<jsp:include page="footer.jsp"></jsp:include>

</body>
</html>
