
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Đăng Tin Mua</title>
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
            .a1
            {
                border: 2px solid #f7921d;
                background-color:#f7921d;
            }
            .a1 .a2
            {
                margin: 0px auto;
                padding-left: 64px;
                padding-right: 71px;
            }
            input[type=number]
            {
                padding: 0.7em;
                width: 60%;
                background: none;
                border: 1px solid #D1D1D1;
                border-radius: 10px;
                -webkit-border-radius: 10px;
                -o-border-radius: 10px;
                -moz-border-radius: 10px;
                -ms-border-radius: 10px;
                outline: none;
                color: #464646;
                font-size: 1em;
            }
        </style>
    </head>
    <body style="background:url(video/bann.jpg) fixed" >
        <jsp:include page="header.jsp"></jsp:include>
            <div class="container">
                <div class="container">
                    <div class="account">
                        <h2 class="account-in">Đăng Tin Bán</h2>
                        <div class="a1">
                            <div class="a2">
                                <p>
                                <p style="color:white;">[+] Làm thế nào để tin đăng bán đạt hiệu quả cao nhất?</p>
                                <p style="color:white;">– Để tin đăng bán đất, nhà của bạn đạt hiệu quả cao nhất, được người mua quan tâm nhất thì thông tin mô tả về mảnh đất, ngôi nhà của bạn càng chi tiết càng tốt và đặc biệt nên có ảnh thật về nhà, đất của bạn.- Theo thống kê của Bất Động Sản Hòn Đá với các tin đăng bán có ảnh thật, người mua sẽ quan tâm hơn rất nhiều so với bđs không có ảnh.- Hơn nữa, trong kết quả tìm kiếm nhà, đất,Bất Động Sản Cái Bang sẽ ưu tiên thứ tự cho những tin có ảnh thật và đầy đủ thông tin hơn những tin không có ảnh và ít thông tin về giao dịch.
                                    – Vì vậy, bạn không nên vội vàng đăng tin khi thông tin về nhà đất của bạn chưa đầy đủ.</p>
                                <p style="color: white;float:right;margin-top: -10px;">Chúc bạn mau bán được nhà, đất !
                                    Thân ái,</p>
                                <p style="color:white;margin-right: -255px;float: right;margin-top: 5px;" > Doanh Nghiệp Bất Động Sản <strong>Hòn Đá</strong>! </p>
                            </div>
                        </div>
                        <form action="DangBaiBan3" method="post" enctype="multipart/form-data" >
                            <div>
                                <p>Tiêu Đề (*)</p>
                                <input style="border: 2px solid #f7921d;" type="text" name="tieude" required />
                            </div>
                            <div> 
                                <p class="word">Giá: </p>
                                <input style="border: 2px solid #f7921d;" type="number" name="gia" required />
                            </div>
                            <div>
                                <p class="word">Loại Nhà:</p>
                                <select name="category_id" style="border: 2px solid #f7921d;width: 665px;height: 47px;border-radius: 10px;margin-top: 3px;padding-top: 3px;padding-left: 13px;">
                                    <option value="1">Nhà Cấp 4</option>
                                    <option value="2">Nhà Cấp 3</option>
                                    <option value="3">Nhà Cấp 2</option>
                                    <option value="4">Nhà Cấp 1</option>
                                    <option value="5">Biệt Thự</option>
                                </select>
                            </div>
                            <div>
                                <p class="word">Hình Thức:</p>
                                <select name="hinhthuc" style="border: 2px solid #f7921d;width: 665px;height: 47px;border-radius: 10px;margin-top: 3px;padding-top: 3px;padding-left: 13px;">
                                    <option value="6">Nhà Bán</option>
                                    <option value="7">Đất Bán</option>
                                </select>
                            </div>
                            <div>
                                <p class="word">Họ Và Tên: </p>
                                <input style="border: 2px solid #f7921d;" type="text" name="ht" required />
                            </div>
                            <div>
                                <p class="word">Số Điện Thoại: </p>
                                <input style="border: 2px solid #f7921d;" type="number" name="sdt" required />
                            </div>
                            <div>
                                <p class="word">Diện Tích(Nhập Số): </p>
                                <input style="border: 2px solid #f7921d;" type="number" name="dt" required />
                            </div>
                            <div>
                                <p class="word">Vị Trí: </p>
                                <input style="border: 2px solid #f7921d;" type="text" name="vt" required />
                            </div>
                            <div> 
                                <p class="word">Hình Ảnh(*)</p>
                                <input required="required" style="border: 2px solid #f7921d;width: 665px;height: 47px;border-radius: 10px;margin-top: 3px;padding-top: 10px;padding-left: 13px;" type="file" name="file" multiple>
                            </div>
                            <div>
                                <p class="word">Mô Tả:</p>
                                <textarea style="border: 2px solid #f7921d;" class="textarea" rows="160" cols="30" name="mota" required ></textarea>
                            </div>
                            <input type="hidden" value="postbai" name="command">
                            <input type="submit" value="Đăng Bài"> 
                        </form>
                    </div>
                </div>
            </div>
        <jsp:include page="footer.jsp"></jsp:include>
    </body>
</html>
