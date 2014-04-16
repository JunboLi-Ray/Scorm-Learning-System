<%--@elvariable id="permissionList" type="java.util.List"--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta http-equiv="X-UA-Compatible" content="IE=edge"/>
    <title>用户新增</title>
    <meta http-equiv="Content-Type" content="text/html;charset=UTF-8"/>
    <%@include file="../../includes/common.jsp" %>
</head>
<body>
<div id="mainContent">
    <form class="form-horizontal">
        <fieldset>
            <legend></legend>

            <div class="control-group">
                <label class="control-label" for="loginName"><spring:message code="accountId"/> </label>

                <div class="controls">
                    <input id="loginName" name="loginName" type="text">
                </div>
            </div>

            <div class="control-group">
                <label class="control-label" for="userName"><spring:message code="name"/></label>

                <div class="controls">
                    <input id="userName" name="userName" type="text">
                </div>
            </div>

            <div class="control-group">
                <label class="control-label" for="userPassword"><spring:message code="password"/></label>

                <div class="controls">
                    <input id="userPassword" name="userPassword" type="password">
                </div>
            </div>

            <div class="control-group">
                <label class="control-label" for="showDepartment"><spring:message code="department"/></label>

                <div class="controls">
                    <input type="text" name="showDepartment" id="showDepartment" value=""
                           flag="department" autocomplete="off"/>
                    <input type="hidden" name="departmentId" id="departmentId" value="" autoHidden="autoHidden">
                </div>
            </div>

            <div class="control-group">
                <label class="control-label" for="roleName"><spring:message code="role"/></label>

                <div class="controls">
                    <input type="text" name="roleName" id="roleName" value=""
                           flag="allRoles" autocomplete="off"/>
                    <input type="hidden" name="roleId" id="roleId" value="" autoHidden="autoHidden">
                </div>
            </div>

            <div class="control-group">
                <label class="control-label"></label>

                <div class="controls">
                    <input type="button" id="saves" class="btn btn-primary" onclick="save()"
                           value="<spring:message code="save"/>"/>
                    <input type="button" onclick="quit()" class="btn btn-primary"
                           value="<spring:message code="cancel"/>"/>
                </div>
            </div>
        </fieldset>
    </form>
</div>
</body>
</html>
<script type="text/javascript">
    var rules = {
        objInfo: {
            loginName: {
                checkRegExp: ["loginName", "<spring:message code="accountId"/>", JCRegExp.letterNum],
                checkEmpty: ["loginName", "<spring:message code="accountId"/>"],
                ajax: [basePath + "admin/user/checkRepeatLoginName", {}, {loginName: "$('#loginName').val().trim()",oldName:"''"},
                    backFuncLoginName, "text", "POST"]
            },
            userName: {
                checkEmpty: ["userName", "<spring:message code="name"/>"],
                ajax: [basePath + "admin/user/checkRepeatUserName", {}, {userName: "$('#userName').val().trim()",oldName:"''"},
                    backFuncUserName, "text", "POST"]
            },
            userPassword: {
                checkEmpty: ["userPassword", "<spring:message code="password"/>"],
                checkRegExp: ["userPassword", "<spring:message code="password"/>", JCRegExp.letterNum],
                min: ["userPassword", "3", "<spring:message code="password"/><spring:message code="length"/>"]
            },
            departmentId: {
                checkFrameEmpty: ["departmentId", "<spring:message code="department"/>", "showDepartment"]
            },
            roleName: {
                checkFrameEmpty: ["roleId", "<spring:message code="role"/>", "roleName"]
            }
        }
    };

    function backFuncLoginName(data, returnObj) {
        returnObj.obj = $('#loginName');
        returnObj.errMsg = "<spring:message code="theLoginNameExisted"/>!";
        if (data == "true") {
            returnObj.bool = true;
        }
        if (data == "false") {
            returnObj.bool = false;
        }
        return returnObj;
    }

    function backFuncUserName(data, returnObj) {
        returnObj.obj = $('#userName');
        returnObj.errMsg = "<spring:message code="theUserNameExisted"/>!";
        if (data == "true") {
            returnObj.bool = true;
        }
        if (data == "false") {
            returnObj.bool = false;
        }
        return returnObj;
    }

    function save() {
        if (!JC.validate(rules)) return;
        $("#saves").button('loading');
        $.ajax({
            url: basePath + "admin/user/addUser",
            data: {
                loginName: $("#loginName").val().trim(),
                userName: $("#userName").val().trim(),
                password: $("#userPassword").val().trim().md5(),
                departmentId: $("#departmentId").val(),
                roleId: $("#roleId").val()
            },
            dataType: "json",
            type: "POST",
            success: function () {
                $.messager.alert("<spring:message code="prompt"/>", "<spring:message code="add"/><spring:message code="succeed"/><spring:message code="exclamationMark"/>", "", function () {
                    parent.$("#dataEdit").dialog('close');
                    parent.query();
                });
            },
            error: doError
        })
    }

    function quit() {
        parent.$("#dataEdit").dialog('close');
    }
</script>