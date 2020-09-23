<%@page import="java.util.ArrayList"%>

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
    <body>
        <jsp:include page="header.jsp"></jsp:include>
        <%--
            ProductDAO x = new ProductDAO();
            String category_id = "";
            if (request.getParameter("category") != null) {
                category_id = request.getParameter("category");
            }
            Cart cart = (Cart) session.getAttribute("cart");
            if (cart == null) {
                cart = new Cart();
                session.setAttribute("cart", cart);
            }
            //lỗi phân trang chưa fixed
           /* int pages = 0, firstResult = 0, maxResult = 0, total = 0;
            if (request.getParameter("pages") != null) {
                pages = Integer.parseInt(request.getParameter("pages"));
            }
            total = ProductDAO.countProductByCategory(Long.parseLong(category_id));
            if (total <= 4) {
                firstResult = 1;
                maxResult = total;
            } else {
                firstResult = (pages) * 4 - 4;
                maxResult = 4;
            }
            ArrayList<Product> list = ProductDAO.getListProductByNav(Long.parseLong(category_id), firstResult, maxResult);*/
        --%>
        <div class="container">
            <div class="content">
                <div class="content-top">
                    <h3 class="future"> Bài Đăng</h3>
                    <%--
                        for (Product p : ProductDAO.getListProductByCategory(Long.parseLong(category_id) ) ) {
                    --%>
                    <div class="col-md-3 md-col">
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
    <!---->
    <jsp:include page="footer.jsp"></jsp:include>
</body>
</html>