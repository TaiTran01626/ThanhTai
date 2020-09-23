<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="spring"
	uri="http://www.springframework.org/tags/form"%>
<%@page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Đăng Ký</title>
        <link href="css/bootstrap.css" rel="stylesheet" type="text/css" media="all" />
        <script src="js/jquery.min.js"></script>
        <link href="css/style.css" rel="stylesheet" type="text/css" media="all" />
        <meta name="viewport" content="width=device-width,height=device-height,user-scalable=yes, initial-scale=1, minimum-scale=1.0, maximum-scale=3.0" >
        <script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
        <link href='http://fonts.googleapis.com/css?family=Exo:100,200,300,400,500,600,700,800,900' rel='stylesheet' type='text/css'>
        <script type="text/javascript" src="js/move-top.js"></script>
        <script type="text/javascript" src="js/easing.js"></script>
        
        <style>
            #tb:hover
            {
                animation: swing 1s ease;
                border-color: #00c6d7;
                box-shadow: 0 10px 6px -6px #777;
                color: #00c6d7;
            }
        </style>
    </head>
    <body style="background:url(video/bann.jpg) fixed">
        <jsp:include page="header.jsp"></jsp:include>
        <div class="container" style="border: 3px solid black;" >
            <%request.setCharacterEncoding("UTF-8");%>
            <%response.setContentType("text/html; charset=UTF-8"); %>
                <div class="container" >
                    <div class="account">
                        <h2 class="account-in" style="color:white;">Đăng Ký Tài Khoản</h2>
                       <spring:form  method="POST"  modelAttribute="user">
                       <div>
                            <span class="mail" style="color:white;">Họ Và Tên:*</span>
                            <span>
                            <spring:input path="name" style="margin-left: 34px;padding-left: 23px;" id="name"  name="name" placeholder="Điền họ và tên..." />
                                   <span class="error_form" id="name"></span></span>
                        </div>
                        <div> 	
                            <span class="mail" style="color:white;">Email/Gmail:*</span>
                            <span>
                            <spring:input path="email"  style="margin-left: 17px;padding-left: 23px;" id="email"  name="email" placeholder="Điền email..." /> 
                                    <span class="error_form" id="email"></span></span>
                        </div>   
                         <div> 	
                            <span class="word" style="color:white;">Mật khẩu:*</span>
                            <span>
                            <spring:password path="pass" style="margin-left: 68px;padding-left: 23px;" id="pass" name="pass" placeholder="Điền mật khẩu..." /> 
                                    <span class="error_form" id="pass"></span></span>
                        </div>   
                         <div> 	
                            <span class="word" style="color:white;">Nhập lại mật khẩu:*</span>
                            <span>
                            <spring:password path="re_pass" style="padding-left: 23px;" id="re_pass" name="re_pass" placeholder="Điền lại mật khẩu..." /> 
                                    <span class="error_form" id="re_pass"></span></span>
                        </div> 
                         <div> 	
                            <span class="word" style="color:white;">Địa chỉ:*</span>
                            <span>
                            <spring:input path="address" style="margin-left: 84px;padding-left: 23px;" id="address" name="address" placeholder="Điền địa chỉ..." /> 
                                    <span class="error_form" id="address"></span></span>
                        </div>  
                          <div> 	
                            <span class="word" style="color:white;">Ngày sinh:*</span>
                            <span><spring:input path="birthday" style="margin-left: 60px;padding-left: 23px;" id="birthday" name="birthday" placeholder="Điền ngày tháng năm sinh..." /> 
                                    <span class="error_form" id="birthday"></span></span>
                        </div>     
                           
                          <div> 	
                            <span class="word" style="color:white;">Số điện thoại:*</span>
                            <span><spring:input path="phone" style="margin-left: 40px;padding-left: 23px;"  id="phone" name="phone" placeholder="Điền số điện thoại..." /> 
                                    <span class="error_form" id="phone"></span></span>
                        </div>     
                        
                  <spring:button style="background:rgba(0,0,0,0.4);border:1px solid black;">Submit</spring:button>
                   </spring:form>
                </div>
            </div>
        </div>
        <jsp:include page="footer.jsp"></jsp:include>
    </body>
</html>
