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
        function check() {
            var username=$("#username").val();
            var password=$("#password").val();
            if (username == "" || password == "") {
                $("#message").text("账号密码不能为空！");
                return false;
            }
            return true;
        }
    </script>
</head>
<body class="bg-dark">
<div class="container">
    <div class="card card-login mx-auto mt-5">
        <div class="card-header">请登录</div>
        <div class="card-body">
            <form action="${pageContext.request.contextPath}/login.action" method="post" onsubmit="return check()">
                <div class="form-group">
                    <div class="form-label-group">
                        <input type="text" id="inputEmail" name="username" class="form-control" placeholder="Email address" required="required" autofocus="autofocus">
                        <label for="inputEmail">请输入账号</label>
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
                <input type="submit" class="btn btn-primary btn-block" value="登录"/>
            </form>
            <div class="text-danger">
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
