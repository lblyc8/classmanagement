<%--
  Created by IntelliJ IDEA.
  User: lblyc
  Date: 2019/11/20
  Time: 15:12
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<div class="modal fade" id="insertStudentModal" tabindex="2" role="dialog" aria-labelledby="insetStudentLabel" aria-hidden="true">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title" id="insetStudentLabel">添加学生</h5>
                <button class="close" type="button"  name="closeInsertCommittee" id="closeInsertCommittee" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">×</span>
                </button>
            </div>
            <div class="modal-body">
                <form method="post" id="insertStudentForm">
                    <div class="form-group">
                        <div class="form-label-group">
                            <input type="text" id="inputSno" name="Sno" class="form-control" placeholder="请输入Sno" required="required" autofocus="autofocus">
                            <label for="inputSno">请输入Sno</label>
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
                           <select id="sel_sex" name="sex" class="custom-select" title="请选择">
                               <option value="男">男</option>
                               <option value="女">女</option>
                           </select>
                        </div>
                    </div>
                </form>
                <button type="button" class="btn btn-primary btn-block" value="提交" onclick="createCommittee()">添加学生</button>
            </div>

            <script>
                function clearStudent() {

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
