

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Lưu Thông Tin Nhà,Đất</title>
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
        <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.4.2/css/all.css" />
        <style>
            #baidang {
                font-family: "Trebuchet MS", Arial, Helvetica, sans-serif;
                border-collapse: collapse;
                width: 100%;
            }

            #baidang td, #baidang th {
                border: 1px solid #ddd;
                padding: 8px;
            }

            #baidang tr:nth-child(even){background-color: rgba(0,0,0,0.4);color:white;}

            #baidang tr:hover {background-color: #544949;}

            #baidang th {
                padding-top: 12px;
                padding-bottom: 12px;
                text-align: left;
                background-color: rgba(0,0,0,0.4);
                color: white;
            }
            .fas
            {
                font-size:20px;
            }
        </style>
    </head>
    <body style="background:url(video/bann.jpg) fixed">
        <%--
            Users users = null;
            if (session.getAttribute("user") != null) {
                users = (Users) session.getAttribute("user");
            }
            Cart cart = (Cart) session.getAttribute("cart");

            if (cart == null) {
                cart = new Cart();
                session.setAttribute("cart", cart);
            }
        --%>
        <jsp:include page="header.jsp"></jsp:include>

            <div>
                <table id="baidang">
                    <h3 style="color: white;">Quản Lý Bài Đăng</h3>
                    <a href="index.jsp"><i style="color:white;" class="fas fa-sign-out-alt">Trở Laị</i></a>
                    <tr>
                        <th>STT</th>
                        <th>Họ Và Tên Người Đăng</th>
                        <th>SĐT</th>
                        <th>Tiêu Đề</th>
                        <th>Nội Dung Bài Đăng</th>
                    </tr>
                <%--
                    int countt = 0;
                    for (Map.Entry<Long, Item> list : cart.getCartItems().entrySet()) {
                        countt++;
                --%>
                <tr style="color: white;">
                    <td><%--=countt--%> </td>
                    <td><%--=list.getValue().getProduct().getHoten()--%></td>
                    <td><%--=list.getValue().getProduct().getSdt() --%></td>
                    <td><%--=list.getValue().getProduct().getProductName() --%></td>
                    <td><span><a href="CartServlet?command=remove&productID=<%--=list.getValue().getProduct().getProductID() --%>"><i class="fas fa-trash-alt" style="color:white;">[Xóa]</i></a></span><span><a href="single.jsp?productID=<%--=list.getValue().getProduct().getProductID()--%>"><i class="fas fa-link" style="color:white;">Chi Tiết</i></span></a> </td>
                </tr>
                <%-- }--%>
            </table>
        </div>
        <jsp:include page="footer.jsp"></jsp:include>
    </body>
</html>
