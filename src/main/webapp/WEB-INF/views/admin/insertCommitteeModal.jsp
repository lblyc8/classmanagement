<%--
  Created by IntelliJ IDEA.
  User: lblyc
  Date: 2019/11/19
  Time: 15:10
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
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