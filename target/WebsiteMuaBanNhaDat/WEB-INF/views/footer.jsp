

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Footer</title>
        <link href="css/style.css" rel="stylesheet" type="text/css" media="all" />
        <meta name="viewport" content="width=device-width,height=device-height,user-scalable=yes, initial-scale=1, minimum-scale=1.0, maximum-scale=3.0" >
        <link href='http://fonts.googleapis.com/css?family=Exo:100,200,300,400,500,600,700,800,900' rel='stylesheet' type='text/css'>
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
        <script>
            $(function ()
            {
                $("#slider1").responsiveSlides
                        ({
                            auto: true,
                            speed: 100,
                            namespace: "callbacks",
                            pager: true,
                        });
            });
        </script>
        <script>
            $(document).ready(function (c)
            {
                $('.alert-close').on('click', function (c)
                {
                    $('.message').fadeOut('slow', function (c)
                    {
                        $('.message').remove();
                    });
                });
            });
        </script>
        <script>
            $(document).ready(function (c)
            {
                $('.alert-close1').on('click', function (c)
                {
                    $('.message1').fadeOut('slow', function (c)
                    {
                        $('.message1').remove();
                    });
                });
            });
        </script>
    </head>
    <body>
        <div class="footer" style="background: rgba(0,0,0,0.4);">
            <div class="footer-middle" style="background: rgba(0,0,0,0.4);">
                <div class="container">
                    <div class="footer-middle-in">
                        <h6>Website</h6>
                        <p>Mua bán nhà đất
                        </p>
                    </div>
                    <div class="footer-middle-in">
                        <h6>Thành viên thực hiện: </h6>
                        <p>
                           Nguyễn Thị Tuyết Sa-16130542 <br>
                           Trần Thanh Tài-16130560<br>
                           Bạch Tuấn Hợp
                        </p>
                    </div>
                    <div class="footer-middle-in">
                        <h6>Email</h6>
                        <p>
                        sanguyen010917@gmail.com<br>
                        thanhtai01626@gmail.com<br>
                        bachtuanhop@gmail.com
                            
                        </p>
                         
                    </div>
                    <div class="footer-middle-in">
                        <h6>Số điện thoại</h6>
                        
                         <p>
                            SDT: 0961728267<br>
                            SDT: 0326232525<br>
                            SDT: 0386414411
                        </p>
                    </div>
                    
                   
                    <div class="clearfix"></div>
                </div>
            </div>
            <p class="footer-class" style="background: rgba(0,0,0,0.4);"><a href="index.jsp" target="_blank"></a>Project Chuyên Đề Web của <strong>Nhóm</strong></p>
            <script type="text/javascript">
                $(document).ready(function ()
                {
                    $().UItoTop({easingType: 'easeOutQuart'});
                });
            </script>
            <a href="#" id="toTop" style="display: block;background:url(images/up.png) no-repeat"> <span id="toTopHover" style="opacity: 1;"> </span></a>

        </div>
    </body>
</html>
