<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: lblyc
  Date: 2019/11/11
  Time: 16:06
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page isELIgnored="false" %>
<html>
<%@include file="../common/head.jsp"%>
<body id="page-top">

<%@include file="../common/navbar.jsp"%>
<div id="wrapper">

    <!-- Sidebar 侧边栏-->
    <%@include file="sidebar.jsp"%>
    <!--table-->
    <div id="content-wrapper">

        <div class="container-fluid">

            <!-- Breadcrumbs-->
            <ol class="breadcrumb">
                <li class="breadcrumb-item">
                    学生信息管理
                </li>
                <li class="breadcrumb-item active">学生信息</li>
            </ol>

            <!-- DataTables Example -->
            <div class="card mb-3">
                <div class="card-header">
                    <i class="fas fa-table"></i>
                    学生信息</div>
                <div class="card-body">
                    <div class="table-responsive">
                        <table class="table table-bordered" id="dataTable" width="100%" cellspacing="0">
                            <thead>
                            <tr>
                                <th>学号</th>
                                <th>姓名</th>
                                <th>性别</th>
                                <th>生日</th>
                                <th>电话</th>
                                <th>QQ</th>
                                <th>Email</th>
                            </tr>
                            </thead>
                            <tfoot>
                            <tr>
                                <th>学号</th>
                                <th>姓名</th>
                                <th>性别</th>
                                <th>生日</th>
                                <th>电话</th>
                                <th>QQ</th>
                                <th>Email</th>
                            </tr>
                            </tfoot>
                            <tbody>
                            <c:forEach items="${studentList}" var="student">
                                <tr>
                                    <td>${student.sno}</td>
                                    <td>${student.name}</td>
                                    <td>${student.sex}</td>
                                    <td>${student.birthday}</td>
                                    <td>${student.phone}</td>
                                    <td>${student.QQ}</td>
                                    <td>${student.email}</td>
                                </tr>
                            </c:forEach>
                            </tbody>
                        </table>
                    </div>
                </div>
            </div>
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
</div>
<a class="scroll-to-top rounded" href="#page-top">
    <i class="fas fa-angle-up"></i>
</a>

<%@include file="insertCommitteeModal.jsp"%>

<!-- Logout Modal-->
<%@include file="../common/logoutModal.jsp"%>

<%@include file="insertStudentModal.jsp"%>

<%@include file="../common/end.jsp"%>

<!-- Page level plugin JavaScript-->
<script src="${pageContext.request.contextPath}/statics/vendor/datatables/jquery.dataTables.js"></script>
<script src="${pageContext.request.contextPath}/statics/vendor/datatables/dataTables.bootstrap4.js"></script>

<!-- Demo scripts for this page-->
<script src="${pageContext.request.contextPath}/statics/js/demo/datatables-demo.js"></script>
</body>
</html>
