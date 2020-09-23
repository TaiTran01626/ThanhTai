
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

        </style>
    </head>
    <body style="background:url(video/bann.jpg) fixed;color:white;">
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
                    <div style="float: right;position: relative;margin-top: 23px;margin-right: 6px;font-size: 20px;">
                        <p><i style="padding-left: 53px;float: right;color: white;" class="far fa-calendar-alt">Ngày Đăng Bài:<%--=p2.getNgaydang()--%></i></span></p>
                </div>
                <div class="single">
                    <div>
                        <a href="#">
                            <img class="a2-1" style="border: 2px solid #312f2c;float: left;height: 324px;width: 576px;" src="<%--=p2.getProductImage()--%>" alt="" >
                        </a>
                    </div>

                    <div class="as">

                        <p style="font-size: 28px;color: white;padding-left:729px;background-color:rgba(0,0,0,0.4);;border-top-right-radius: 45px;">Thông Tin Liên Hệ<p>
                        <div>
                            <div style="border: 2px solid #00c6d7;border-top-right-radius: 23px;color: white;"><p style="padding-left:591px;font-size:18px;"><i class="far fa-caret-square-up"></i><strong>Tiêu Đề</strong><span style="margin-left:166px;"><%--=p2.getProductName()--%></span> </p></div>
                            <div style="border: 2px solid #00c6d7;border-top-right-radius: 23px;color: white;"><p style="padding-left:591px;font-size:18px;"><i class="fab fa-accusoft"></i><strong>Hình Thức</strong><span style="margin-left:145px;"><%--=p2.getHinhthuc()--%></span> </p></div>
                            <div style="border: 2px solid #00c6d7;border-top-right-radius: 23px;color: white;"><p style="padding-left:591px;font-size:18px;"><i class="fas fa-money-bill"></i><strong>Giá</strong><span style="margin-left:197px;"><%--=p2.getProductPrice()--%> Tỷ VNĐ</span></p></div>
                            <div style="border: 2px solid #00c6d7;border-top-right-radius: 23px;color: white;"><p style="padding-left:591px;font-size:18px;"><i class="fab fa-laravel"></i><strong>Diện Tích</strong><span style="margin-left:147px;"><%--=p2.getDientich()--%>m<sup>2</sup></span></p></div>
                            <div style="border: 2px solid #00c6d7;border-top-right-radius: 23px;color: white;"><p style="padding-left:591px;font-size:18px;"><i class="fas fa-address-book"></i><strong>Họ Tên Người Đăng</strong><span style="margin-left:72px;"><%--=p2.getHoten()--%></span></p></div>
                            <div style="border: 2px solid #00c6d7;border-top-right-radius: 23px;color: white;"><p style="padding-left:591px;font-size:18px;"><i class="fas fa-phone-square"></i><strong>Số Điện Thoại</strong><span style="margin-left:117px;"><%--=p2.getSdt()--%></span></p></div>
                            <div style="border: 2px solid #00c6d7;border-top-right-radius: 23px;height: auto;color: white;"><p style="padding-left:591px;font-size:18px;"><i class="fas fa-compass"></i><strong>Vị Trí</strong><span style="margin-left:185px;"><%--=p2.getVitri()--%></span></p></div>
                        </div>

                        <div class="top-content" style="float: right;position: relative;margin-top: -86px;">
                            <div class="white" style="line-height: 17px;margin-left: 383px;margin-top: 54px;">
                                <%--
                                    Cart cart = (Cart) session.getAttribute("cart");
                                    if (!cart.getCartItems().containsKey(p2.getProductID())) {
                                --%>
                                <a  href="CartServlet?command=plus&productID=<%--=p2.getProductID()--%>" class="hvr-shutter-in-vertical hvr-shutter-in-vertical2 ">Lưu Thông Tin</a>
                                <%--
                                } else {
                                --%>
                                <a href=""  style="cursor:unset;background:black;line-height: 17px;margin-left: 383px;margin-top: 3px;" id="luuthongtin" class="hvr-shutter-in-vertical hvr-shutter-in-vertical2">Đã Lưu</a>
                                <%--
                                    }
                                --%>

                                <div class="clearfix"></div>
                            </div>
                        </div>

                    </div>
                    <div class="clearfix"> </div>    
                </div>
                <div class="as1" style="border: 2px solid black;height: auto;" >
                    <p style="background:rgba(0,0,0,0.4);color: white;font-size: 25px;padding-left: 486px;padding-top: 10px;padding-bottom: 10px;">Mô tả chi tiết</p>
                    <p style="padding-left: 26px;padding-right:26px;font-size:20px;color:white;"><%--=p2.getProductDescription()--%></p>
                    <div class="clearfix"> </div>
                    <img style="border:2px solid #312f2c;height:508px;width:737px;margin-left:201px;margin-top:25px;margin-bottom:25px;" src="<%--=p2.getProductImage()%>" alt="" >
                </div>

                <div class="clearfix"> </div>
                <div style="margin-top: 56px;border: 1px solid white;background: rgba(255,255,255, 0.3);">
                    <div class="fb-comments" data-href="http://localhost:8081/MuaBanNha/single.jsp?productID=<%--=request.getParameter("productID")--%>" data-width="700" data-numposts="5"></div><div>
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
                                    for (Product pp : ProductDAO.getProductSamePrice(p2.getProductPrice() )) {
                                --%>
                                <div class="col-md-3 md-col" style="margin-top:30px;width: 285px;">
                                    <div  class="col-md" style="background:rgba(0,0,0,0.4)">
                                        <div><i class="fas fa-home" style="color: white;" ><%--=pp.getHinhthuc() --%></i><span><i style="padding-left: 53px;float: right;color: white;" class="far fa-calendar-alt"><%--=pp.getNgaydang() --%></i></span></div>
                                        <div class="clearfix"></div> 
                                        <a href="single.jsp?productID=<%--=pp.getProductID() --%>"><img  src="<%--=pp.getProductImage()--%>" style="height: 253px;" alt="<%--=pp.getProductName() --%>" /></a>	
                                        <div class="top-content">
                                            <h5><a style="color:white;" href="single.jsp?productID=<%--=pp.getProductID() --%>"><%--=pp.getProductName()--%></a></h5>
                                            <h5 style="padding: 0px;margin-top: -9px;"><i class="fas fa-compass" style="color: white;"><%--=pp.getVitri() --%></i></h5>
                                            <h5 style="padding: 0px;margin-top: 4px;"><i class="fab fa-laravel" style="color:white;padding: 0px;margin-top: -9px;"><%--=pp.getProductPrice() --%>m<sup>2</sup></i></h5>
                                            <%--
                                                Users users = null;
                                                if (session.getAttribute("user") != null) {
                                                    users = (Users) session.getAttribute("user");
                                                }
                                                if (users != null) {
                                            --%>
                                            <div class="white">
                                                <%--
                                                    if (!cart.getCartItems().containsKey(p2.getProductID())) {
                                                --%>
                                                <a href="#" id="luuthongtinchothue" class="hvr-shutter-in-vertical hvr-shutter-in-vertical2">Lưu Thông Tin</a>
                                                <%--
                                                } else {
                                                --%>
                                                <a href="#" style="cursor:unset;background:black;" id="luuthongtin" class="hvr-shutter-in-vertical hvr-shutter-in-vertical2">Đã Lưu</a>
                                                <%--
                                                    }
                                                --%>
                                                <p class="dollar"><span><%--=pp.getProductPrice() --%></span><span>Tỷ</span><span class="in-dollar">VNĐ</span></p>
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


                <div class="clearfix"></div>
                <!--start cùng loại-->
                <div class="container" style="margin-top: 60px;">
                    <div class="content">
                        <div class="content-top">
                            <h3 class="future" style="color:white;">Bài Đăng Cùng Loại</h3>
                            <div class="content-top-in">
                                <%--
                                    request.setCharacterEncoding("UTF-8");
                                    response.setCharacterEncoding("UTF-8");
                                    for (Product pp : ProductDAO.getProductSameTieuDe(p2.getProductName())) {
                                --%>
                                <div class="col-md-3 md-col" style="margin-top:30px;">
                                    <div  class="col-md" style="background:rgba(0,0,0,0.4)">
                                        <div><i class="fas fa-home" style="color: white;" ><%--=pp.getHinhthuc() --%></i><span><i style="padding-left: 53px;float: right;color: white;" class="far fa-calendar-alt"><%--=pp.getNgaydang()--%></i></span></div>
                                        <div class="clearfix"></div> 
                                        <a href="single.jsp?productID=<%--=pp.getProductID() --%>"><img  src="<%--=pp.getProductImage() --%>" style="height: 253px;" alt="<%--=pp.getProductName() --%>" /></a>	
                                        <div class="top-content">
                                            <h5><a style="color:white;" href="single.jsp?productID=<%--=pp.getProductID() --%>""><%--=pp.getProductName()--%></a></h5>
                                            <h5 style="padding: 0px;margin-top: -9px;"><i class="fas fa-compass" style="color: white;"><%--=pp.getVitri() --%></i></h5>
                                            <h5 style="padding: 0px;margin-top: 4px;"><i class="fab fa-laravel" style="color:white;padding: 0px;margin-top: -9px;"><%--=pp.getDientich() --%>m<sup>2</sup></i></h5>
                                            <%--
                                                Users users = null;
                                                if (session.getAttribute("user") != null) {
                                                    users = (Users) session.getAttribute("user");
                                                }
                                                if (users != null) {
                                            --%>
                                            <div class="white">
                                                <%--
                                                    if (!cart.getCartItems().containsKey(p2.getProductID() )) {
                                                --%>
                                                <a href="#" id="luuthongtinchothue" class="hvr-shutter-in-vertical hvr-shutter-in-vertical2">Lưu Thông Tin</a>
                                                <%--
                                                } else {
                                                --%>
                                                <a href="#" style="cursor:unset;background:black;" id="luuthongtin" class="hvr-shutter-in-vertical hvr-shutter-in-vertical2">Đã Lưu</a>
                                                <%--
                                                    }
                                                --%>
                                                <p class="dollar"><span><%--=pp.getProductPrice() --%></span><span>Tỷ</span><span class="in-dollar">VNĐ</span></p>
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
            </div>

        </div>
        <jsp:include page="footer.jsp"></jsp:include>

    </body>
</html>
