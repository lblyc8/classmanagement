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
                                <th>学号</th>
                                <th>姓名</th>
                                <th>电话</th>
                                <th>职位</th>
                                <th>操作</th>
                            </tr>
                            </thead>
                            <tfoot>
                            <tr>
                                <th>学号</th>
                                <th>姓名</th>
                                <th>电话</th>
                                <th>职位</th>
                                <th>操作</th>
                            </tr>
                            </tfoot>
                            <tbody>
                            <c:forEach items="${committeeList}" var="committee">
                                <tr>
                                    <td>${committee.userId}</td>
                                    <td>${committee.name}</td>
                                    <td>${committee.phone}</td>
                                    <td>${committee.position}</td>
                                    <td>
                                        <a href="#" class="btn btn-primary btn-xs" data-toggle="modal" data-target="#editCommitteeModal" onclick="initCommittee(${committee.userId})">修改</a>
                                        <a href="#" class="btn btn-danger btn-xs" onclick="deleteCommittee(${committee.userId})">删除</a>
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

<!-- Logout Modal-->
<%@include file="../common/logoutModal.jsp"%>

<!--edit Modal-->
<%@include file="editModal.jsp"%>
<script>
    // 撤职
    function deleteCommittee(UserId) {
        if(confirm("确定要将学号为"+UserId+"的用户撤职吗？")){
            $.post("${pageContext.request.contextPath}/deleteCommittee.action",{"UserId":UserId},
            function (data) {
                if(data=="OK"){
                    alert("成功！");
                    window.location.reload();
                }else{
                    alert("失败！");
                    window.location.reload();
                }
            })
        }
    }
</script>

<%@include file="insertCommitteeModal.jsp"%>

<%@include file="insertStudentModal.jsp"%>

<%@include file="../common/end.jsp"%>

<!-- Page level plugin JavaScript-->
<script src="${pageContext.request.contextPath}/statics/vendor/datatables/jquery.dataTables.js"></script>
<script src="${pageContext.request.contextPath}/statics/vendor/datatables/dataTables.bootstrap4.js"></script>

<!-- Demo scripts for this page-->
<script src="${pageContext.request.contextPath}/statics/js/demo/datatables-demo.js"></script>
</body>
</html>
