<%--
  Created by IntelliJ IDEA.
  User: lblyc
  Date: 2019/10/14
  Time: 15:08
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page isELIgnored="false" %>
<html>
<head>
    <title>Login</title>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">

    <!-- Custom fonts for this template-->
    <link href="${pageContext.request.contextPath}/statics/vendor/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css">

    <!-- Custom styles for this template-->
    <link href="${pageContext.request.contextPath}/statics/css/sb-admin.css" rel="stylesheet">
    <script>
        function showMessage() {
            $("#message").text(window.sessionStorage.getItem("message"));
        }
    </script>
    <script>
        function check() {
            var username = $("#inputUsername").val();
            var password = $("#inputPassword").val();
            var message = "";
            var pass = true;
            if (username == "" || password == "" ||
                username == undefined || password == undefined ||
                username == null || password == null) {
                message = "账号密码不能为空";
                pass = false;
            }
            // if (username.length < 5) {
            //     message = message + "用户名不小于5位\n";
            //     pass = false;
            // }
            // if (pass.equals(false)) {
            //     $("#msg").text(message);
            //     return ;
            // }
            if(!pass){
                window.sessionStorage.setItem("message", message);
                location.reload();
            }
            if(pass){
                document.getElementById("userForm").submit();
            }
        }
    </script>
</head>
<body class="bg-dark" onload="showMessage()">
<div class="container">
    <div class="card card-login mx-auto mt-5">
        <div class="card-header">请登录</div>
        <div class="card-body">
            <form action="${pageContext.request.contextPath}/login.action" method="post" id="userForm">
                <div class="form-group">
                    <div class="form-label-group">
                        <input type="text" id="inputUsername" name="username" class="form-control" placeholder="Email address" required="required" autofocus="autofocus" minlength="5" maxlength="8">
                        <label for="inputUsername">请输入账号</label>
                    </div>
                </div>
                <div class="form-group">
                    <div class="form-label-group">
                        <input type="password" id="inputPassword" name="password" class="form-control" placeholder="Password" required="required">
                        <label for="inputPassword">请输入密码</label>
                    </div>
                </div>
                <div class="form-group">
                    <div class="checkbox">
                        <label>
                            <input type="checkbox" value="remember-me">
                            保存密码
                        </label>
                    </div>
                </div>
                <input type="button" class="btn btn-primary btn-block" onclick="check()" value="提交"/>
            </form>
            <div class="text-danger" id="message">
                ${msg}
            </div>
        </div>
    </div>
</div>

<!-- Bootstrap core JavaScript-->
<script src="${pageContext.request.contextPath}/statics/vendor/jquery/jquery.min.js"></script>
<script src="${pageContext.request.contextPath}/statics/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

<!-- Core plugin JavaScript-->
<script src="${pageContext.request.contextPath}/statics/vendor/jquery-easing/jquery.easing.min.js"></script>
</body>
</html>
