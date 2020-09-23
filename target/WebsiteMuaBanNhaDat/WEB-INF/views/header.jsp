<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="spring"
	uri="http://www.springframework.org/tags/form"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Header</title>
        <script src='https://www.google.com/recaptcha/api.js?render=6Ldy2YMUAAAAAG2CYNQEAeWH3iVAMPKALvw2enf1'></script>
        <link href="css/style.css" rel="stylesheet" type="text/css" media="all" />
        <meta name="viewport" content="width=device-width,height=device-height,user-scalable=yes, initial-scale=1, minimum-scale=1.0, maximum-scale=3.0" >
        <link href='http://fonts.googleapis.com/css?family=Exo:100,200,300,400,500,600,700,800,900' rel='stylesheet' type='text/css'>

        <script>(function (d, s, id) {
                var js, fjs = d.getElementsByTagName(s)[0];
                if (d.getElementById(id))
                    return;
                js = d.createElement(s);
                js.id = id;
                js.src = 'https://connect.facebook.net/vi_VN/sdk.js#xfbml=1&version=v3.2&appId=271903206793496&autoLogAppEvents=1';
                fjs.parentNode.insertBefore(js, fjs);
            }(document, 'script', 'facebook-jssdk'));
        </script>
        <script>
            window.fbAsyncInit = function () {
                FB.init({
                    appId: '{your-app-id}',
                    cookie: true,
                    xfbml: true,
                    version: '{api-version}'
                });

                FB.AppEvents.logPageView();

            };

            (function (d, s, id) {
                var js, fjs = d.getElementsByTagName(s)[0];
                if (d.getElementById(id)) {
                    return;
                }
                js = d.createElement(s);
                js.id = id;
                js.src = "https://connect.facebook.net/en_US/sdk.js";
                fjs.parentNode.insertBefore(js, fjs);
            }(document, 'script', 'facebook-jssdk'));
        </script>
        
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
        <style>
            #menu
            {
                color:white;
            }
            #s:hover
            {
                border : 1px solid #00c6d7;
                box-shadow: 0 10px 6px -6px #777;
                color: #00c6d7;
                background:#00c6d7;
            }
        </style>
    </head>
    <body >
      

        <div class="header">
            <div class="header-top" style="background: rgba(0,0,0,0.4);">
                <div class="container">	
                    <div class="header-top-in">			
                        <div class="logo">
                            <a href="index.jsp"><i class="fas fa-home"></i></a>
                        </div>
                        <div class="header-in">
                            <ul class="icon1 sub-icon1">
                                <li ><a href="index.jsp">Xin Chào,Bạn </a> </li>
                                <li><a href="DangXuat">Thoát Tài Khoản</a></li>
                                </ul>
                                </div>
                                </div>
                                </div>
                                </div>
                                
            <div class="header-bottom">
                <div class="container">
                    <div class="h_menu4">
                        <a  class="toggleMenu" href="#" >Menu</a>
                        <ul class="nav">
                            <li id="s" class="active" style="background:rgba(0,0,0,0.4)" ><a href="index.jsp" id="menu" ><i> </i>Home</a></li>
                            <li id="s" ><a id="menu" href="#" >NHÀ ĐẤT BÁN</a>
                                <ul class="drop" style="background:rgba(0,0,0,0.4);">
                                    <%--
                                        for (Category c : CategoryDAO.getListCategory()) {
                                    --%>
                                    <li id="s" style="background:rgba(0,0,0,0.4);"><a id="menu" href="product.jsp?category=<%--=c.getCategoryID()--%>&pages=1"><%--=c.getCategoryName()--%></a></li>
                                        <%--
                                            }
                                        --%>            
                                </ul>
                            </li> 						
                            <li id="s" style="background:rgba(0,0,0,0.4);color:white;"><a id="menu" href="#"  >Nhà Đất Cho Thuê</a>
                                <ul class="drop" style="background:rgba(0,0,0,0.4);">
                                    <%--
                                        for (Category c : CategoryDAO.getListCategoryChoThue()) {
                                    --%>
                                    <li id="s" style="background:rgba(0,0,0,0.4);"><a id="menu" href="product_chothue.jsp?category=<%--=c.getCategoryID()--%>"><%--=c.getCategoryName()--%></a></li>
                                        <%--
                                            }
                                        --%>            
                                </ul>
                            </li> 						  				 
                            <li id="s" ><a id="menu" href="#" >Tin Tức</a></li>
                            <li id="s" style="background:rgba(0,0,0,0.4);color:white;"><a id="menu" href="xaydung_kientruc.jsp"  >Xây Dựng Kiến Trúc </a></li>
                            <li id="s" ><a id="menu" href="noi_ngoaithat.jsp" >Nội-Ngoại Thất</a></li>
                            <li id="s" style="background:rgba(0,0,0,0.4);color:white;"><a id="menu" href="phongthuy.jsp" >Phong Thủy</a></li>
                            <li id="s" ><a  id="menu" href="lienhe.jsp">Liên Hệ</a></li>
                        </ul>
                        <script type="text/javascript" src="js/nav.js"></script>
                    </div>
                </div>
            </div>
            <div class="header-bottom-in" style="background: rgba(0,0,0,0.4);">
                <div class="container">
                    <%--
                        if (users == null) {
                    --%>
                    <div class="header-bottom-on">
                        <p class="wel" style="color:#white;" ><span style="color:white;">Xin Chào,Bạn Nên Đăng Nhập Để Sử Dụng Đầy Đủ Chức Năng <i class="fas fa-sign-in-alt"></i></span><a href="login" style="color: #white;"><span style="color:aqua;">Đăng Nhập</span></a><span style="color:white;"> Hoặc </span><i class="fas fa-sign-in-alt"></i><a href="register" style="color: #white;"><span style="color:aqua;">Tạo Tài Khoản Mới.</span></a></p>

                        <div class="header-can">
                            <ul class="social-in">
                                <li><a href="#"><i> </i></a></li>
                                <li><a href="#"><i class="facebook"> </i></a></li>
                                <li><a href="#"><i class="twitter"></i></a></li>					
                                <li><a href="#"><i class="skype"> </i></a></li>
                            </ul>
                            <%--
                                }
                            --%>
                            <div class="search">
                                <form action="timkiem.jsp?page=1" method="get">
                                    <input type="text" value="Tìm Kiếm" name="tim" onfocus="this.value = '';" onblur="if (this.value == '')
                                            {
                                                this.value = 'Tìm Kiếm';
                                            }" >
                                    <input type="submit" value="">
                                </form>
                            </div>
                            <div class="clearfix"> </div>
                        </div>
                        <div class="clearfix"></div>
                    </div>
                    <div class="header-bottom-on">
                        <% String err = (String) request.getAttribute("dangbaiban");
                            if (err != null) {
                        %>
                        <p class="on" style="margin:6px auto;margin-left:450px;background:url(images/back1.png) no-repeat;" ><%out.print(err); %></p>
                        <div class="clearfix"></div>
                        <%
                            }
                        %>

                        <% String chothue = (String) request.getAttribute("chothue");
                            if (chothue != null) {
                        %>
                        <p class="on" style="margin:6px auto;margin-left:450px;background:rgba(0,0,0,0);" ><i class="fas fa-male" style="color:white;"></i><%out.print(chothue); %></p>
                        <div class="clearfix"></div>
                        <%
                            }
                        %>
                        <style>
                            @-webkit-keyframes my {
                                0% { color: red;  } 
                                50% { color: white;  }
                                100% { color: red;  }  
                            }
                            @-moz-keyframes my { 
                                0% { color: red;  } 
                                50% { color: white;  }
                                100% { color: red;  }  
                            }
                            @-o-keyframes my { 
                                0% { color: red;  } 
                                50% { color: white;  }
                                100% { color: red;  }  
                            }
                            @keyframes my { 
                                0% { color: red;  } 
                                50% { color: white;  }
                                100% { color: red;  } 
                            } 
                            .on
                            {
                                -webkit-animation: my 1000ms infinite;
                                -moz-animation: my 1000ms infinite; 
                                -o-animation: my 1000ms infinite; 
                                animation: my 1000ms infinite;
                            }

                        </style>
                    </div>    
                </div>
            </div>
        </div>
    </body>
</html>
