<%-- 
    Document   : chothue
    Created on : Dec 17, 2018, 7:38:49 AM
    Author     : Administrator
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link href="css/bootstrap.css" rel="stylesheet" type="text/css" media="all" />
        <script src="js/jquery.min.js"></script>
        <link href="css/style.css" rel="stylesheet" type="text/css" media="all" />

        <link rel="stylesheet" type="text/css" media="all" href="csschothue/general.css" />
        <link rel="stylesheet" type="text/css" media="all" href="csschothue/style.min.css" />
        <link rel="stylesheet" type="text/css" media="all" href="csschothue/post.css" />
        <link rel="stylesheet" type="text/css" media="all" href="csschothue/basis.css" />



        <meta name="viewport" content="width=device-width,height=device-height,user-scalable=yes, initial-scale=1, minimum-scale=1.0, maximum-scale=3.0" >
        <script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
        <link href='http://fonts.googleapis.com/css?family=Exo:100,200,300,400,500,600,700,800,900' rel='stylesheet' type='text/css'>
        <script type="text/javascript" src="js/move-top.js"></script>
        <script type="text/javascript" src="js/easing.js"></script>
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
        <script>
            $(document).ready(function (c) {
                $('.alert-close1').on('click', function (c) {
                    $('.message1').fadeOut('slow', function (c) {
                        $('.message1').remove();
                    });
                });
            });
        </script>
        <style>
            label
            {
                color:white;
            }
            #btnHuyPost:hover , input[type=submit]:hover
            {
                color:aqua;
                background:rgba(0,0,0,0.7);
            }
        </style>
    </head>
    <body style="background:url(video/bann.jpg) fixed">
        <jsp:include page="header.jsp"></jsp:include>

            <link href="/Styles/JqueryFileUpload/Default/jquery.fileupload-ui.css" rel="stylesheet" type="text/css" />
            <form action="ChoThue" method="post" enctype="multipart/form-data">
                <div id="wrapper" class="">
                    <div class="main set-relative">
                        <div class="row clearfix ">
                            <div class="col-gr-100per">
                                <div id="MainContent_PostNews1_pnDangtin">

                                    <div class="post-title">
                                        <h4 class="title text-uppercase fweight-bold" style="color:white;background:rgba(0,0,0,0.4)" >Thông tin cơ bản
                                        </h4>
                                    </div>
                                    <div class="post-field">
                                        <label class="first" style="color:white;">Loại nhà đất (<span class="red-clr">*</span>)</label>
                                        <div class="post-field-option set-relative">
                                            <select name="loainhadat" class="form-control" style="background:rgba(0,0,0,0.4);color:white;" >
                                                <option >Chọn Loại nhà đất</option>
                                                <option value="1">+Cho thuê căn hộ chung cư</option>
                                                <option value="2">+Cho thuê nhà riêng</option>
                                                <option value="3">+Cho thuê nhà mặt phố</option>
                                                <option value="4">+Cho thuê nhà trọ,phòng trọ</option>
                                                <option value="5">+Cho thuê văn phòng </option>
                                                <option value="6">+Cho thuê cửa hàng,ki ốt</option>
                                                <option value="7">+Cho thuê nhà kho</option>
                                                <option value="8">+Cho thuê nhà xưởng,đất</option>
                                            </select>
                                            <span style="color: red; position: absolute; line-height: 40px; left: 0; top: 30px; display: none;" id="spanLoainhadat">Bạn cần nhập loại nhà đất</span>
                                        </div>
                                    </div>

                                    <div class="post-field mg-top-0" style="padding-top: 25px;">
                                        <label class="first" >Giá</label>
                                        <input name="gia" type="text" id="txtDiadiem" class="form-control" style="width:210px;background:rgba(0,0,0,0.4)"  />
                                    </div>
                                    <div class="post-field mg-top-0" style="padding-top: 25px;">
                                        <label class="first" >Diện Tích(m<sup>2</sup>)</label>
                                        <input name="dientich" type="text" id="txtDiadiem" class="form-control" style="width:210px;background:rgba(0,0,0,0.4)" />
                                    </div>

                                    <div class="post-field">
                                        <label class="first">Địa điểm (<span class="red-clr">*</span>)</label>
                                        <div class="post-field-option">
                                            <input name="diadiem" style="background:rgba(0,0,0,0.4)" type="text" id="txtDiadiem" class="form-control" />
                                        </div>
                                    </div>
                                    <div class="clearfix"></div>
                                    <div style="background:rgba(0,0,0,0.4);color:white;padding:26px;margin-top:30px;">
                                        <h4>THÔNG TIN KHÁC</h4>
                                    </div>
                                    <div class="post-field huongnha">
                                        <label class="first  pull-left" >Mặt tiền (m<sup>2</sup>)</label>
                                        <div class="post-field-option">
                                            <input name="matien" type="text" maxlength="6" id="txtMattien" style="background: rgba(0,0,0,0.4)" class="form-control w-230  pull-left" />
                                            <label class="mg-left-40 mg-right-5  pull-left" >Đường trước nhà (m<sup>2</sup>)</label>
                                            <input name="duongtruocnha" type="text" maxlength="6" id="txtDuongtruocnha" class="form-control w-230  pull-left" style="background: rgba(0,0,0,0.4)" />
                                            <label class="mg-left-40 mg-right-5 pull-left">Hướng nhà</label>
                                            <select name="huongnha" style="color:white; background: rgba(0,0,0,0.4)" id="cboDirectionPost" class="form-control w-230 mg-right-0">
                                                <option>Không Xác Định</option>
                                                <option value="1">Đông </option>
                                                <option value="2">Tây </option>
                                                <option value="3">Nam </option>
                                                <option value="4">Bắc </option>
                                                <option value="5">Đông-Bắc</option>
                                                <option value="6">Tây-Bắc</option>
                                                <option value="7">Tây-Nam</option>
                                                <option value="8">Đông-Nam</option>
                                            </select>
                                        </div>
                                    </div>
                                    <div class="post-field huongnha">
                                        <label class="first  pull-left">Số tầng</label>
                                        <div class="post-field-option">
                                            <input name="sotang" type="text" maxlength="1" id="txtMattien" class="form-control w-230  pull-left" style="margin-right: 75px;background: rgba(0,0,0,0.4)" />
                                            <label class="mg-left-40 mg-right-5  pull-left">Số phòng</label>

                                            <input name="sophong" type="text" maxlength="2" id="txtDuongtruocnha" class="form-control w-230  pull-left" style="margin-right: 18px;background: rgba(0,0,0,0.4)" />
                                            <label class="mg-left-40 mg-right-5 pull-left">Số toilet</label>
                                            <input name="sotoilet" type="text" maxlength="2" id="txtDuongtruocnha" class="form-control w-230  pull-left" style="background: rgba(0,0,0,0.4)" />
                                        </div>
                                    </div>

                                    <div class="clearfix"></div>
                                    <div style="background:rgba(0,0,0,0.4);color:white;padding:26px;margin-top:30px;">
                                        <h4>MÔ TẢ CHI TIẾT</h4>
                                    </div>

                                    <div class="post-field mg-bottom-20">
                                        <label class="first">Tiêu đề (<span class="red-clr">*</span>)</label>
                                        <div class="post-field-option">
                                            <input name="tieude" style="background:rgba(0,0,0,0.4)" type="text" maxlength="150" id="txtTieude" class="form-control" />
                                            <span style="color: Red; display: none; margin-top: 2px; float: left;" id="spanTieude">Bạn cần nhập tiêu đề</span>
                                            <span style="color: Red; display: none; margin-top: 2px; float: left;" id="spanLimit">Tiêu đề phải nhập ít nhất 5 chữ!</span>
                                            <span style="color: Red; display: none; margin-top: 2px; float: left;" id="spanMaxCharacter">Tiêu đề không được nhập quá 150 kí tự!</span>
                                        </div>
                                    </div>
                                    <div class="post-field set-relative mg-top-0">
                                        <label class="first">
                                            <span style="letter-spacing: -0.5px">Nội dung mô tả</span> (<span class="red-clr">*</span>)
                                            <br />
                                            <span class="note" >Lưu ý: tối đa chỉ 3000 kí tự</span>
                                        </label>
                                        <div id="boxarea" class="post-field-option">
                                            <textarea name="mota" style="background:rgba(0,0,0,0.4)" id="tarNoidung" cols="60" rows="5" maxlength="3000" class="form-control" style="padding: 8px 15px 25px;"></textarea>
                                            <span style="color: Red; display: none;" id="spanNoidungmota">Nội dung không được bỏ trống!</span>
                                            <span style="color: Red; display: none;" id="spanLimited">Nội dung phải lớn hơn 100 kí tự!</span>
                                            <div id="tarNoidung_counter" class="counter-noidung" style="background:rgba(0,0,0,0.4);color:white;">
                                                1/3000 kí tự
                                            </div>
                                        </div>
                                    </div>
                                    <div class="post-field" style="min-height:inherit;">
                                        <label>Đăng tải hình ảnh(*)</label>
                                    </div>
                                    <div class="post-field">
                                        <input name="hinhanh" type="file" style="width:264px;height:40px;border:1px solid white;padding-top: 7px;border-radius: 4px;" multiple />
                                    </div>
                                    
                                    <div class="clearfix"></div>
                                    <div style="background:rgba(0,0,0,0.4);color:white;padding:26px;margin-top:30px;">
                                        <h4>THÔNG TIN LIÊN HỆ</h4>
                                    </div>

                                    <div class="post-field mg-bottom-20">
                                        <label class="first">Họ tên (<span class="red-clr">*</span>)</label>
                                        <div class="post-field-option">
                                            <input name="hoten" type="text" id="txtHovaten" class="form-control w-390" style="background:rgba(0,0,0,0.4)" />
                                        </div>
                                    </div>
                                    <div class="post-field mg-bottom-20">
                                        <label class="first">Địa Chỉ (<span class="red-clr">*</span>)</label>
                                        <div class="post-field-option">
                                            <input name="diachi" type="text" id="txtHovaten" class="form-control w-390" style="background:rgba(0,0,0,0.4)" />
                                        </div>
                                    </div>
                                    <div class="post-field mg-bottom-20">
                                        <label class="first">Điện Thoại (<span class="red-clr">*</span>)</label>
                                        <div class="post-field-option">
                                            <input name="dienthoai" type="text" id="txtHovaten" class="form-control w-390" style="background:rgba(0,0,0,0.4)" />
                                        </div>
                                    </div>
                                    <div class="post-field mg-bottom-20">
                                        <label class="first">Email (<span class="red-clr">*</span>)</label>
                                        <div class="post-field-option">
                                            <input name="email" type="text" id="txtHovaten" class="form-control w-390" style="background:rgba(0,0,0,0.4)" />
                                        </div>
                                    </div>
                                    <div class="clear"></div>
                                    <div >
                                        <span>
                                            <input type="submit" style="font-size: 30px;width: 166px;border: 1px solid white;border-radius: 5px;background: rgba(0,0,0,0.4);color: white;"  value="Đăng Tin">
                                        </span>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>

                </div>
            </form>
            <script type="text/javascript">

                $(function ()
                {
                    $('#btnHuyPost').click(function () {
                        if (confirm("Bạn có chắc chắn muốn hủy ?"))
                        {
                            location.reload(true);
                        }
                    })
                })
            </script>




        <jsp:include page="footer.jsp"></jsp:include>

    </body>
</html>
