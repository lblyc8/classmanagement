<%--
  Created by IntelliJ IDEA.
  User: lblyc
  Date: 2019/11/20
  Time: 14:43
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<ul class="sidebar navbar-nav">
    <li class="nav-item dropdown">
        <a class="nav-link dropdown-toggle" href="#" id="committeeDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
            <i class="fas fa-fw fa-tachometer-alt"></i>
            <span>班委信息管理</span>
        </a>
        <div class="dropdown-menu" aria-labelledby="committeeDropdown">
            <%--                <h6 class="dropdown-header">信息查询：</h6>--%>
            <a class="dropdown-item" href="${pageContext.request.contextPath}/queryCommitteeAll">班委信息</a>
<%--            <div class="dropdown-divider"></div>--%>
            <%--                <h6 class="dropdown-header">信息修改：</h6>--%>
            <%--                <a class="dropdown-item" href="#">班委信息修改</a>--%>
<%--            <a class="dropdown-item" href="#" data-toggle="modal" data-target="#insertCommitteeModal" onclick="clearCommittee()">增加/任命班委</a>--%>
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
            <a class="dropdown-item" href="#" data-toggle="modal" data-target="#insertStudentModal" onclick="clearStudent()">增加学生</a>
            <%--                <a class="dropdown-item" href="#">删除学生</a>--%>
            <%--                <a class="dropdown-item" href="#">修改信息</a>--%>
        </div>
    </li>
</ul>
