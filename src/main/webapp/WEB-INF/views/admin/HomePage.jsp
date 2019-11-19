<%--
  Created by IntelliJ IDEA.
  User: lblyc
  Date: 2019/10/14
  Time: 15:48
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page isELIgnored="false" %>
<html>
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>HomePage</title>

    <!-- Custom fonts for this template-->
    <link href="${pageContext.request.contextPath}/statics/vendor/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css">

    <!-- Page level plugin CSS-->
    <link href="${pageContext.request.contextPath}/statics/vendor/datatables/dataTables.bootstrap4.css" rel="stylesheet">

    <!-- Custom styles for this template-->
    <link href="${pageContext.request.contextPath}/statics/css/sb-admin.css" rel="stylesheet">


</head>
<body id="page-top">

<nav class="navbar navbar-expand navbar-dark bg-dark static-top">

    <a class="navbar-brand mr-1" href="${pageContext.request.contextPath}/back.action">班级管理系统</a>

    <button class="btn btn-link btn-sm text-white order-1 order-sm-0" id="sidebarToggle" href="#">
        <i class="fas fa-bars"></i>
    </button>

    <!-- Navbar Search -->
    <form class="d-none d-md-inline-block form-inline ml-auto mr-0 mr-md-3 my-2 my-md-0">
<%--        <div class="input-group">--%>
<%--            <input type="text" class="form-control" placeholder="Search for..." aria-label="Search" aria-describedby="basic-addon2">--%>
<%--            <div class="input-group-append">--%>
<%--                <button class="btn btn-primary" type="button">--%>
<%--                    <i class="fas fa-search"></i>--%>
<%--                </button>--%>
<%--            </div>--%>
<%--        </div>--%>
    </form>

    <!-- Navbar -->
    <ul class="navbar-nav ml-auto ml-md-0">
        <li class="nav-item dropdown no-arrow mx-1">
            <a class="nav-link dropdown-toggle" href="#" id="alertsDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                <i class="fas fa-bell fa-fw"></i>
                <span class="badge badge-danger"></span>
            </a>
            <div class="dropdown-menu dropdown-menu-right" aria-labelledby="alertsDropdown">
                <a class="dropdown-item" href="#">Action</a>
                <a class="dropdown-item" href="#">Another action</a>
                <div class="dropdown-divider"></div>
                <a class="dropdown-item" href="#">Something else here</a>
            </div>
        </li>
        <li class="nav-item dropdown no-arrow mx-1">
            <a class="nav-link dropdown-toggle" href="#" id="messagesDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                <i class="fas fa-envelope fa-fw"></i>
                <span class="badge badge-danger"></span>
            </a>
            <div class="dropdown-menu dropdown-menu-right" aria-labelledby="messagesDropdown">
                <a class="dropdown-item" href="#">Action</a>
                <a class="dropdown-item" href="#">Another action</a>
                <div class="dropdown-divider"></div>
                <a class="dropdown-item" href="#">Something else here</a>
            </div>
        </li>
        <li class="nav-item dropdown no-arrow">
            <a class="nav-link dropdown-toggle" href="#" id="userDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                <i class="fas fa-user-circle fa-fw"></i>
            </a>
            <div class="dropdown-menu dropdown-menu-right" aria-labelledby="userDropdown">
                <a class="dropdown-item" href="#">修改个人信息</a>
                <a class="dropdown-item" href="#">修改密码</a>
                <div class="dropdown-divider"></div>
                <a class="dropdown-item" href="#" data-toggle="modal" data-target="#logoutModal">登出</a>
            </div>
        </li>
    </ul>

</nav>
<!--我是分割线-->
<div id="wrapper">

    <!-- Sidebar 侧边栏-->
    <ul class="sidebar navbar-nav">
        <li class="nav-item dropdown">
            <a class="nav-link dropdown-toggle" href="#" id="committeeDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                <i class="fas fa-fw fa-tachometer-alt"></i>
                <span>班委信息管理</span>
            </a>
            <div class="dropdown-menu" aria-labelledby="committeeDropdown">
<%--                <h6 class="dropdown-header">信息查询：</h6>--%>
                <a class="dropdown-item" href="${pageContext.request.contextPath}/queryCommitteeAll">班委信息</a>
                <div class="dropdown-divider"></div>
<%--                <h6 class="dropdown-header">信息修改：</h6>--%>
<%--                <a class="dropdown-item" href="#">班委信息修改</a>--%>
                <a class="dropdown-item" href="#" data-toggle="modal" data-target="#insertCommitteeModal" onclick="clearCommittee()">增加/任命班委</a>
            </div>
        </li>
        <li class="nav-item dropdown">
            <a class="nav-link dropdown-toggle" href="#" id="studentDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                <i class="fas fa-fw fa-folder"></i>
                <span>学生信息管理</span>
            </a>
            <div class="dropdown-menu" aria-labelledby="studentDropdown">
<%--                <h6 class="dropdown-header">信息查询：</h6>--%>
                <a class="dropdown-item" href="${pageContext.request.contextPath}/queryStudentAll">学生信息</a>
                <div class="dropdown-divider"></div>
<%--                <h6 class="dropdown-header">信息修改：</h6>--%>
                <a class="dropdown-item" href="#">增加学生</a>
<%--                <a class="dropdown-item" href="#">删除学生</a>--%>
<%--                <a class="dropdown-item" href="#">修改信息</a>--%>
            </div>
        </li>
    </ul>
<!--中间主体-->
    <div id="content-wrapper">
        <!--内容-->
        <div class="container-fluid">

            <!-- Breadcrumbs-->
            <ol class="breadcrumb">
                <li class="breadcrumb-item active">HomePage</li>
            </ol>

            <!-- 页面内容 -->
            <h1 align="center">Welcome! ${sessionScope.USER_SESSION.getUserName()}</h1>
            <hr>
            <p align="center">左侧为导航栏，左上角可返回主页，右上角可修改个人信息</p>

        </div>
        <!-- /.container-fluid -->

        <!-- Sticky Footer -->
        <footer class="sticky-footer">
            <div class="container my-auto">
                <div class="copyright text-center my-auto">
                    <span>Copyright © ClassManagement 2019</span>
                </div>
            </div>
        </footer>

    </div>
    <!-- /.content-wrapper -->

</div>
<!-- /#wrapper -->

<!-- Scroll to Top Button-->
<a class="scroll-to-top rounded" href="#page-top">
    <i class="fas fa-angle-up"></i>
</a>

<!-- Logout Modal-->
<div class="modal fade" id="logoutModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title" id="exampleModalLabel">Ready to Leave?</h5>
                <button class="close" type="button" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">×</span>
                </button>
            </div>
            <div class="modal-body">确定要退出登录吗？</div>
            <div class="modal-footer">
                <button class="btn btn-secondary" type="button" data-dismiss="modal">取消</button>
                <a class="btn btn-primary" href="${pageContext.request.contextPath}/logout.action">确定</a>
            </div>
        </div>
    </div>
</div>

<!--insertCommittee Modal-->
<div class="modal fade" id="insertCommitteeModal" tabindex="0" role="dialog" aria-labelledby="insetCommitteeLabel" aria-hidden="true">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title" id="insetCommitteeLabel">增加班委</h5>
                <button class="close" type="button"  name="closeInsertCommittee" id="closeInsertCommittee" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">×</span>
                </button>
            </div>
            <div class="modal-body">
                <form method="post" id="insertCommitteeForm">
                    <div class="form-group">
                        <div class="form-label-group">
                            <input type="text" id="inputUserId" name="UserId" class="form-control" placeholder="请输入UserId" required="required" autofocus="autofocus">
                            <label for="inputUserId">请输入UserId</label>
                        </div>
                    </div>
                    <div class="form-group">
                        <div class="form-label-group">
                            <input type="text" id="inputName" name="Name" class="form-control" placeholder="请输入姓名" required="required">
                            <label for="inputName">请输入姓名</label>
                        </div>
                    </div>
                    <div class="form-group">
                        <div class="form-label-group">
                            <input type="text" id="inputPosition" name="Position" class="form-control" placeholder="请输入职位" required="required">
                            <label for="inputPosition">请输入职位</label>
                        </div>
                    </div>
                </form>
                <button type="button" class="btn btn-primary btn-block" value="提交" onclick="createCommittee()">添加班委</button>
            </div>

            <script>
                function clearCommittee() {
                    $("#inputUserId").val("");
                    $("#inputName").val("");
                    $("#inputPosition").val("");
                }

                function createCommittee() {
                    $.post("${pageContext.request.contextPath}/insertCommittee.action",$("#insertCommitteeForm").serialize(),function (data) {
                        if(data == "OK"){
                            alert("班委添加成功！");
                            window.location.replace("${pageContext.request.contextPath}/queryCommitteeAll");
                        }else{
                            alert("班委添加失败,请核对UserId与姓名！");
                        }
                    });
                }
            </script>
<%--            <div class="modal-footer">--%>
<%--                <button class="btn btn-secondary" type="button" data-dismiss="modal">取消</button>--%>
<%--                <a class="btn btn-primary" href="${pageContext.request.contextPath}/logout.action">确定</a>--%>
<%--            </div>--%>
        </div>
    </div>
</div>

<!-- Bootstrap core JavaScript-->
<script src="${pageContext.request.contextPath}/statics/vendor/jquery/jquery.min.js"></script>
<script src="${pageContext.request.contextPath}/statics/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

<!-- Core plugin JavaScript-->
<script src="${pageContext.request.contextPath}/statics/vendor/jquery-easing/jquery.easing.min.js"></script>

<!-- Custom scripts for all pages-->
<script src="${pageContext.request.contextPath}/statics/js/sb-admin.min.js"></script>

</body>
</html>
