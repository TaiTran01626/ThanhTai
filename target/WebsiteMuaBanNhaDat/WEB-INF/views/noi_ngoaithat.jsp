
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Nội-Ngoại Thất</title>
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
        <style>
            #top-phongthuy
            {
                background: url(images/back1.png) repeat center;
                color: #f7921d;
                width: 70%;
                margin-top: 21px;
                height: 43px;
                margin-left: 220px;
                padding-top: 11px;
                padding-left: 52px;
                font-size: 18px;
            }
            #bottom-phongthuy
            {
                color: #f7921d;
                width: 70%;
                margin-top: 21px;
                height: auto;
                margin-left: 220px;
                padding-top: 11px;
                padding-left: 52px;
                font-size: 18px;
            }
            .clear
            {
                clear:both;
            }
            .image
            {
                float:left;
                margin-bottom:20px;
            }
            .noidung
            {
                overflow: hidden;
                text-overflow: ellipsis;
                max-width: 653px;
                overflow: hidden;
                display: -webkit-box;
                -webkit-line-clamp: 5;
                -webkit-box-orient: vertical;

            }
        </style>
    </head>
    <body>
        <jsp:include page="header.jsp"></jsp:include>
            <div id="top-phongthuy">
                <a href="index.jsp">Home></a><span>Nội-Ngoại Thất</span>
            </div>
        <%--
            for (noi_ngoaithat n :noi_ngoaithatDAO.getListnoingoai() ) {
        --%>
        <div class="clearfix"></div>
        <div id="bottom-phongthuy">
            <div>
                <div class="image">
                    <image  src="<%--=n.getNoiNgoaiThat_Image() --%>"></image>
                </div>
                <div style="margin-left:239px;">
                    <a href="single_noi_ngoaithat.jsp?id=<%--=n.getId_NoiNgoaiThat() --%>"><p class="tieude" style="margin-bottom:10px;"><%--=n.getNoiNgoaiThat_TieuDe() --%></p></a>
                    <div>
                        <p class="noidung">
                            <%--=n.getNoiNgoaiThat_NoiDung() --%>
                        <div><a href="single_noi_ngoaithat.jsp?id=<%--=n.getId_NoiNgoaiThat() --%> "><span>Đọc Tiếp</span></a></div>
                        </p>
                    </div>
                    <div class="clear"></div>
                </div>
            </div>
        </div>
        <div class="clearfix"></div>
        <%--
            }
        --%>
        <jsp:include page="footer.jsp"></jsp:include>
    </body>
</html>
