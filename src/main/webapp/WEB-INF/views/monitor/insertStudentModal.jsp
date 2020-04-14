<%--
  Created by IntelliJ IDEA.
  User: lblyc
  Date: 2019/11/20
  Time: 15:12
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!-- Latest compiled and minified CSS -->
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-select/1.10.0/css/bootstrap-select.min.css">

<link href="https://cdn.bootcss.com/bootstrap-datetimepicker/4.17.47/css/bootstrap-datetimepicker.min.css" rel="stylesheet">

<!-- Latest compiled and minified JavaScript -->
<script src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-select/1.10.0/js/bootstrap-select.min.js"></script>

<script src="https://cdn.bootcss.com/bootstrap-datetimepicker/4.17.47/js/bootstrap-datetimepicker.min.js"></script>

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
                            <label for="inputSno">请输入Sno(11位数字)</label>
                        </div>
                    </div>
                    <div class="form-group">
                        <div class="form-label-group">
                            <input type="text" id="inputSName" name="Name" class="form-control" placeholder="请输入姓名" required="required" >
                            <label for="inputSName">请输入姓名(10字符以内)</label>
                        </div>
                    </div>
                    <div class="form-group">
                        <div class="form-label-group">
                           <select id="sel_sex" name="Sex" class="custom-select" title="请选择">
                               <option value="">--请选择性别--</option>
                               <option value="male">male</option>
                               <option value="female">female</option>
                           </select>
                        </div>
                    </div>
                    <div class="form-group">
                        <div class="form-label-group">
                            <input type="text" id="inputBirthday" name="Birthday" class="form-control" placeholder="请输入出生日期" required="required">
                            <label for="inputBirthday">请输入出生日期(yyyy-MM-dd)</label>
                        </div>
                    </div>
<%--                    <div class="form-group">--%>
<%--                        <div class="input-group date" id="datePicker">--%>
<%--                            <div class="form-label-group">--%>
<%--                                <input type="text" class="form-control" id="sel_date" name="Birthday"/>--%>
<%--                                <label for="sel_date">请选择出生日期</label>--%>
<%--                            </div>--%>
<%--                            <span class="input-group-addon">--%>
<%--                                    <span class="glyphicon glyphicon-calendar"></span>--%>
<%--                                </span>--%>
<%--                        </div>--%>
<%--                    </div>--%>
                    <div class="form-group">
                        <div class="form-label-group">
                            <input type="text" id="inputPhone" name="Phone" class="form-control" placeholder="请输入手机号码" required="required">
                            <label for="inputPhone">请输入手机号码(11位数字)</label>
                        </div>
                    </div>
                    <div class="form-group">
                        <div class="form-label-group">
                            <input type="text" id="inputQQ" name="QQ" class="form-control" placeholder="请输入QQ">
                            <label for="inputQQ">请输入QQ(6-15位以内数字)</label>
                        </div>
                    </div>
                    <div class="form-group">
                        <div class="form-label-group">
                            <input type="text" id="inputEmail" name="Email" class="form-control" placeholder="请输入Email">
                            <label for="inputEmail">请输入Email(40位以内字符)</label>
                        </div>
                    </div>
                </form>
                <button type="button" class="btn btn-primary btn-block" value="提交" onclick="createStudent()">添加学生</button>
            </div>

            <script>
                function clearStudent() {
                    $("#inputSno").val("");
                    $("#inputSName").val("");
                    $("#inputBirthday").val("");
                    $("#inputPhone").val("");
                    $("#inputQQ").val("");
                    $("#inputEmail").val("");
                }

                function createStudent() {
                    $.post("${pageContext.request.contextPath}/insertStudent.action",$("#insertStudentForm").serialize(),function (data) {
                        if(data == "OK"){
                            alert("学生添加成功！");
                            window.location.replace("${pageContext.request.contextPath}/queryStudentAll");
                        }else{
                            alert("学生添加失败,请核对各信息！");
                        }
                    });
                }

                // $(function () {
                //     $('#datePicker').datetimepicker({
                //         format:'YYYY-MM-DD',
                //         locale:moment.local('zh-cn')
                //     });
                // })

                // $(function () {
                //     $(".selectpicker").selectpicker({
                //         nonSelectedText:'请选择性别'
                //     });
                //     var select = $("#sel_sex");
                //     select.append("<option value='男'>男</option>");
                //     select.append("<option value='女'>女</option>");
                //     $(window).on('load',function () {
                //         $('.selectpicker').selectpicker('refresh');
                //     })
                // })
            </script>
            <%--            <div class="modal-footer">--%>
            <%--                <button class="btn btn-secondary" type="button" data-dismiss="modal">取消</button>--%>
            <%--                <a class="btn btn-primary" href="${pageContext.request.contextPath}/logout.action">确定</a>--%>
            <%--            </div>--%>
        </div>
    </div>
</div>
