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
            <script>$("td,th").addClass("text-center");</script>
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
                                <th>操作</th>
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
                                <th>操作</th>
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
                                    <td>
                                        <a href="#" class="btn btn-primary btn-xs" data-toggle="modal" data-target="#editStudentModal" onclick="initStudent(${student.sno})">修改</a>
                                        <a href="#" class="btn btn-danger btn-xs" onclick="deleteStudent(${student.sno})">删除</a>
                                    </td>
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

<!--delete Student-->
<script>
    // 删除学生
    function deleteStudent(Sno) {
        if(confirm("确定要将学号为"+Sno+"的学生删除吗？")){
            $.post("${pageContext.request.contextPath}/deleteStudent.action",{"Sno":Sno},
                function (data) {
                    if(data=="OK"){
                        alert("成功！");
                        window.location.reload();
                    }else{
                        alert("失败！");
                        window.location.reload();
                    }
            });
        }
    }
</script>

<%@include file="../admin/editStudentModal.jsp"%>

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
