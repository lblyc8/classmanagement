<%--
  Created by IntelliJ IDEA.
  User: lblyc
  Date: 2019/11/22
  Time: 10:00
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<div class="modal fade" id="editStudentModal" tabindex="1" role="dialog" aria-labelledby="editStudentLabel" aria-hidden="true">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title" id="editStudentLabel">修改学生信息</h5>
                <button class="close" type="button"  name="closeEditStudent" id="closeEditStudent" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">×</span>
                </button>
            </div>
            <div class="modal-body">
                <form method="post" id="editStudentForm">
                    <div class="form-group">
                        <div class="form-label-group">
                            <input type="text" id="editSno" name="Sno" class="form-control" placeholder="Sno" required="required">
                            <label for="editSno">Sno</label>
                        </div>
                    </div>
                    <div class="form-group">
                        <div class="form-label-group">
                            <input type="text" id="editSName" name="Name" class="form-control" placeholder="姓名" required="required" autofocus="autofocus">
                            <label for="editSName">姓名</label>
                        </div>
                    </div>
                    <div class="form-group">
                        <div class="form-label-group">
                            <select id="editSex" name="Sex" class="custom-select" title="请选择">
                                <option value="">--请选择性别--</option>
                                <option value="male">male</option>
                                <option value="female">female</option>
                            </select>
                        </div>
                    </div>
                    <div class="form-group">
                        <div class="form-label-group">
                            <input type="text" id="editBirthday" name="Birthday" class="form-control" placeholder="生日" required="required">
                            <label for="editBirthday">生日</label>
                        </div>
                    </div>
                    <div class="form-group">
                        <div class="form-label-group">
                            <input type="text" id="editPhone" name="Phone" class="form-control" placeholder="手机号码" required="required">
                            <label for="editPhone">手机号码</label>
                        </div>
                    </div>
                    <div class="form-group">
                        <div class="form-label-group">
                            <input type="text" id="editQQ" name="QQ" class="form-control" placeholder="QQ" required="required">
                            <label for="editQQ">QQ</label>
                        </div>
                    </div>
                    <div class="form-group">
                        <div class="form-label-group">
                            <input type="text" id="editEmail" name="Email" class="form-control" placeholder="Email" required="required">
                            <label for="editEmail">Email</label>
                        </div>
                    </div>
                </form>
                <button type="button" class="btn btn-primary btn-block" value="提交" onclick="updateStudent()">修改</button>
            </div>

            <%--            <div class="modal-footer">--%>
            <%--                <button class="btn btn-secondary" type="button" data-dismiss="modal">取消</button>--%>
            <%--                <a class="btn btn-primary" href="${pageContext.request.contextPath}/logout.action">确定</a>--%>
            <%--            </div>--%>
        </div>
    </div>
</div>
<script>
    function initStudent(sno) {
        $.ajax({
            dataType:"json",
            type:"get",
            url:"${pageContext.request.contextPath}/queryStudentById.action",
            data:{"Sno":sno},
            success:function (data) {
                var str=JSON.stringify(data);
                var jsonObj = JSON.parse(str);
                $("#editSno").val(jsonObj.sno);
                $("#editSName").val(jsonObj.name);
                $("#editBirthday").val(jsonObj.birthday);
                $("#editPhone").val(jsonObj.phone);
                $("#editQQ").val(jsonObj.qq);
                $("#editEmail").val(jsonObj.email);
            },
            error:function () {
                alert("数据请求失败！");
            }
        });
    }

    function updateStudent() {
        if(confirm("确定修改该学生信息吗？")){
            $.post("${pageContext.request.contextPath}/updateStudent.action",$("#editStudentForm").serialize()
                ,function (data) {
                    if (data == "OK") {
                        alert("学生信息更新成功！");
                        window.location.reload();
                    }else{
                        alert("学生信息更新失败！请联系管理员");
                    }
                })
        }
    }

</script>