<%@ page import="java.net.URLDecoder" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core_1_1" %>
<%
    Cookie[] cookies = request.getCookies();
    String user = null;
    if (cookies != null) {
        for (int i = 0; i < cookies.length; i++) {
            if ("user".equals(cookies[i].getName().toString())) {
                user = cookies[i].getValue();
                user = URLDecoder.decode(user, "utf-8");
            }
            out.print(cookies[i].getName() + ":" + cookies[i].getValue() + "<br/>");
        }
    }
%>
<%--
  Created by IntelliJ IDEA.
  User: Akari
  Date: 2017/9/5
  Time: 14:28
  To change this template use File | Settings | File Templates.
--%>
<html>
<head>
    <title>登陆&注册</title>
    <c:set var="root" value="${pageContext.request.contextPath}"/>
    <link type="text/css" rel="stylesheet" href="${root}/resources/bootstrap/css/bootstrap.css">
    <link type="text/css" rel="stylesheet" href="${root}/resources/bootstrap/css/bootstrap-theme.css">
    <link type="text/css" rel="stylesheet" href="${root}/resources/bootstrap/css/bootstrap-datetimepicker.min.css">
    <link type="text/css" rel="stylesheet" href="${root}/resources/dataTables/media/css/dataTables.bootstrap.min.css">
    <link type="text/css" rel="stylesheet" href="${root}/resources/user/css/login-custom.css">

    <script src="${root}/resources/dataTables/media/js/jquery.js" type="text/javascript"></script>
    <script src="${root}/resources/bootstrap/js/bootstrap.js" type="text/javascript"></script>
    <script src="${root}/resources/js/bootbox.min.js" type="text/javascript"></script>
    <script src="${root}/resources/bootstrap/js/bootstrap-datetimepicker.min.js" type="text/javascript"></script>
    <script src="${root}/resources/bootstrap/js/bootstrap-datetimepicker.zh-CN.js" type="text/javascript"></script>
    <script src="${root}/resources/dataTables/media/js/jquery.dataTables.min.js" type="text/javascript"></script>
    <script src="${root}/resources/dataTables/media/js/dataTables.bootstrap.min.js" type="text/javascript"></script>
    <script src="${root}/resources/user/js/login-custom.js" type="text/javascript"></script>

    <link rel="stylesheet" href="${root}/resources/user/css/font-awesome.min.css">
    <link href='${root}/resources/user/css/Varela&Round.css' rel='stylesheet' type='text/css'>
    <script src="${root}/resources/user/js/jquery.validate.min.js"></script>
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1" />
</head>
<body>

<!-- REGISTRATION FORM -->
<div class="text-center" style="padding:50px 0">
    <div class="logo">注册</div>
    <!-- Main Form -->
    <div class="login-form-1">
        <form id="register-form" class="text-left" action="/user/add" method="post">
            <div class="login-form-main-message"></div>
            <div class="main-login-form">
                <div class="login-group">
                    <div class="form-group">
                        <label for="reg_username" class="sr-only">Email address</label>
                        <input type="text" class="form-control" id="reg_username" name="userName" placeholder="username">
                    </div>
                    <div class="form-group">
                        <label for="reg_password" class="sr-only">Password</label>
                        <input type="password" class="form-control" id="reg_password" name="userPassword" placeholder="password">
                    </div>
                    <div class="form-group">
                        <label for="reg_password_confirm" class="sr-only">Password Confirm</label>
                        <input type="password" class="form-control" id="reg_password_confirm" name="userPassword_confirm" placeholder="confirm password">
                    </div>

                    <div class="form-group">
                        <label for="reg_email" class="sr-only">Email</label>
                        <input type="text" class="form-control" id="reg_email" name="email" placeholder="email">
                    </div>
                    <div class="form-group">
                        <label for="reg_fullname" class="sr-only">Full Name</label>
                        <input type="text" class="form-control" id="reg_fullname" name="realName" placeholder="full name">
                    </div>

                    <div class="form-group login-group-checkbox">
                        <input type="radio" class="" name="gender" id="male">
                        <label for="male">女</label>

                        <input type="radio" class="" name="gender" id="female">
                        <label for="female">girl</label>
                    </div>

                    <div class="form-group login-group-checkbox">
                        <input type="checkbox" class="" id="reg_agree" name="agree">
                        <label for="reg_agree">i agree with <a href="#">terms</a></label>
                    </div>
                </div>
                <button type="submit" class="login-button"><i class="fa fa-chevron-right"></i></button>
            </div>
            <div class="etc-login-form">
                <p>已有账号？<a href="${root}/user/login/page">登陆</a></p>
            </div>
        </form>
    </div>
    <!-- end:Main Form -->
</div>

<%--<script>
    $(document).ready(function () {
        $("#btn_add_user").click(function () {
            $.ajax({
                url: "/user/add",
                cache: false, // 禁用缓存
                contentType : false, // 告诉jQuery不要去设置Content-Type请求头
                processData : false, // 告诉jQuery不要去处理发送的数据
                async: false,
                type: "post",
                dataType: "json",
                data: new FormData($("#addUploadForm")[0]),
                success: function (data) {
                    if (data == 1) {
                        if (typeof userTable === "function") {
                            userTable().Init.ajax.reload()
                        }
                        $(".bootbox-close-button").click();
                    } else {
                        alert("添加失败");
                        $(".bootbox-close-button").click();
                    }
                },
                error: function () {
                    alert("通信失败");
                    $(".bootbox-close-button").click();
                }
            });
        });
    });
</script>--%>

</body>
</html>
