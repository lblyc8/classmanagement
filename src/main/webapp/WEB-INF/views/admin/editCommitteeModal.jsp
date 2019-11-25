<%--
  Created by IntelliJ IDEA.
  User: lblyc
  Date: 2019/11/20
  Time: 14:59
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<div class="modal fade" id="editCommitteeModal" tabindex="1" role="dialog" aria-labelledby="editCommitteeLabel" aria-hidden="true">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title" id="editCommitteeLabel">修改班委信息</h5>
                <button class="close" type="button"  name="closeEditCommittee" id="closeEditCommittee" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">×</span>
                </button>
            </div>
            <div class="modal-body">
                <form method="post" id="editCommitteeForm">
                    <div class="form-group">
                        <div class="form-label-group">
                            <input type="text" id="editUserId" name="UserId" class="form-control" placeholder="UserId" required="required">
                            <label for="editUserId">UserId</label>
                        </div>
                    </div>
                    <div class="form-group">
                        <div class="form-label-group">
                            <input type="text" id="editName" name="Name" class="form-control" placeholder="姓名" required="required" autofocus="autofocus">
                            <label for="editName">姓名</label>
                        </div>
                    </div>
                    <div class="form-group">
                        <div class="form-label-group">
                            <input type="text" id="editPosition" name="Position" class="form-control" placeholder="职位" required="required">
                            <label for="editPosition">职位</label>
                        </div>
                    </div>
                </form>
                <button type="button" class="btn btn-primary btn-block" value="提交" onclick="updateCommittee()">修改</button>
            </div>

            <%--            <div class="modal-footer">--%>
            <%--                <button class="btn btn-secondary" type="button" data-dismiss="modal">取消</button>--%>
            <%--                <a class="btn btn-primary" href="${pageContext.request.contextPath}/logout.action">确定</a>--%>
            <%--            </div>--%>
        </div>
    </div>
</div>
<script>
    function initCommittee(id) {
        $.ajax({
            dataType:"json",
            type:"get",
            url:"${pageContext.request.contextPath}/queryCommitteeById.action",
            data:{"UserId":id},
            success:function (data) {
                var str=JSON.stringify(data);
                var jsonObj = JSON.parse(str);
                $("#editUserId").val(jsonObj.userId);
                $("#editName").val(jsonObj.name);
                $("#editPosition").val(jsonObj.position);
            },
            error:function () {
                alert("数据请求失败！");
            }
        });
    }

    function updateCommittee() {
        if(confirm("确定修改该班委信息吗？")){
            $.post("${pageContext.request.contextPath}/updateCommittee.action",$("#editCommitteeForm").serialize()
                ,function (data) {
                    if (data == "OK") {
                        alert("班委信息更新成功！");
                        window.location.reload();
                    }else{
                        alert("班委信息更新失败，请确认学号姓名！");
                    }
                })
        }
    }

</script>
