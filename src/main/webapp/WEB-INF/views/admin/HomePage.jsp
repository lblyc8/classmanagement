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
<%@include file="../common/head.jsp"%>
<body id="page-top">
<%@include file="../common/navbar.jsp"%>
<!--我是分割线-->
<div id="wrapper">

    <!-- Sidebar 侧边栏-->
    <%@include file="sidebar.jsp"%>
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
<%@include file="../common/logoutModal.jsp"%>

<!--insertCommittee Modal-->
<%@include file="insertCommitteeModal.jsp"%>

<!--insertStudent Modal-->
<%@include file="insertStudentModal.jsp"%>

<%@include file="../common/end.jsp"%>

</body>
</html>
