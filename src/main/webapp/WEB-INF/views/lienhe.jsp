
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Liên Hệ</title>
        <link href="${pageContext.request.contextPath}/css/bootstrap.css" rel="stylesheet" type="text/css" media="all" />
        <script src="${pageContext.request.contextPath}/js/jquery.min.js"></script>
        <link href="${pageContext.request.contextPath}/css/style.css" rel="stylesheet" type="text/css" media="all" />
        <meta name="viewport" content="width=device-width,height=device-height,user-scalable=yes, initial-scale=1, minimum-scale=1.0, maximum-scale=3.0" >
        <script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
        <link href='http://fonts.googleapis.com/css?family=Exo:100,200,300,400,500,600,700,800,900' rel='stylesheet' type='text/css'>
        <script type="text/javascript" src="${pageContext.request.contextPath}/js/easing.js"></script>
        <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.4.2/css/all.css" />
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
        <script src="${pageContext.request.contextPath}/js/responsiveslides.min.js"></script>
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
        <script>
            $(document).ready(function (c) {
                $('.alert-close1').on('click', function (c) {
                    $('.message1').fadeOut('slow', function (c) {
                        $('.message1').remove();
                    });
                });
            });
        </script>
    </head>
    <body style="background: url(video/bann.jpg) fixed">
        <jsp:include page="header.jsp"></jsp:include>
        </div>
        <div class="container">
            <div class="contact">
                <h2 class=" contact-in" style="color: #f7921d;">Liên Hệ</h2>
                
                <div class="col-md-6 contact-top">
                    <h3 style="color: #f7921d;">Thông Tin</h3>
                    <div class="map" style="border:2px solid #f7921d">
                     <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3918.2482728322752!2d106.78536971480153!3d10.868711792258923!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x31752891cf0ca363%3A0x356ed7098d266f31!2zVHLGsOG7nW5nIMSQ4bqhaSBI4buNYyBOw7RuZyBMw6JtIFRQLkhDTQ!5e0!3m2!1svi!2s!4v1596986548736!5m2!1svi!2s" width="600" height="450" frameborder="0" style="border:0;" allowfullscreen="" aria-hidden="false" tabindex="0"></iframe>
                    </div>
                    <p style="color: #f7921d;">Sử dụng thông tin được cung cấp để liên hệ với chúng tôi </p>
                    <p style="color: #f7921d;">Cám ơn đã sử dụng dịch vụ của chúng tôi </p>				
                    <ul class="social ">
                        <li><span style="color: #f7921d;"><i > </i>Khu phố 6, Phường Linh Trung, Quận Thủ Đức, TPHCM </span></li>
                        <li><span style="color: #f7921d;"><i class="down"> </i>0961728267</span></li>
                        <li><a href="mailto:info@example.com" style="color: #f7921d;"><i class="mes"> </i>sanguyen010917@gmail.com</a></li>
                    </ul>
                </div>
               
                <div class="clearfix"> </div>
            </div>
        </div>
    <jsp:include page="footer.jsp"></jsp:include>
</body>
</html>
