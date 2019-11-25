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
                    班委信息管理
                </li>
                <li class="breadcrumb-item active">班委信息</li>
            </ol>

            <!-- DataTables Example -->
            <div class="card mb-3">
                <div class="card-header">
                    <i class="fas fa-table"></i>
                    班委信息</div>
                <div class="card-body">
                    <div class="table-responsive">
                        <table class="table table-bordered" id="dataTable" width="100%" cellspacing="0">
                            <thead>
                            <tr>
                                <th class="text-center">学号</th>
                                <th class="text-center">姓名</th>
                                <th class="text-center">电话</th>
                                <th class="text-center">职位</th>
                            </tr>
                            </thead>
                            <tfoot>
                            <tr>
                                <th class="text-center">学号</th>
                                <th class="text-center">姓名</th>
                                <th class="text-center">电话</th>
                                <th class="text-center">职位</th>
                            </tr>
                            </tfoot>
                            <tbody>
                            <c:forEach items="${committeeList}" var="committee">
                                <tr>
                                    <td class="text-center">${committee.userId}</td>
                                    <td class="text-center">${committee.name}</td>
                                    <td class="text-center">${committee.phone}</td>
                                    <td class="text-center">${committee.position}</td>
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
