<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %>
<!DOCTYPE html>
<!--[if IE 8]> <html lang="en" class="ie8 no-js"> <![endif]-->
<!--[if IE 9]> <html lang="en" class="ie9 no-js"> <![endif]-->
<!--[if !IE]><!-->
<html lang="en" class="no-js">
<!--<![endif]-->
<head>
    <meta charset="utf-8"/>
    <title>SLS | SLS ChangePassword</title>
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta content="width=device-width, initial-scale=1.0" name="viewport"/>
    <%@include file="../includes/common.jsp" %>
</head>
<body class="page-header-fixed" style="background-color: #ffffff;overflow-x:hidden">
<%@include file="index/navigationMenu.jsp" %>
<div class="page-container" style="margin-left: 10px;magin-top:10px">
    <div class="page-content-wrapper">
        <div class="page-content" style="margin-left: 10px">
            <div class="row">
                <div class="col-md-12">
                    <div id="" class="portlet box blue">
                        <div class="portlet-title">
                            <div class="caption">
                                修改密码
                            </div>
                            <div class="tools hidden-xs">
                                <a class="reload" href="javascript:;"></a>
                            </div>
                        </div>
                        <div class="portlet-body form">
                            <form class="form-horizontal" id="changePassword" method="post" enctype="multipart/form-data">
                                <div class="form-body">
                                    <div class="tab-content">
                                        <div class="alert alert-success display-none" id="successInfo">
                                            <button class="close" data-dismiss="alert"></button>
                                            密码修改成功!
                                        </div>
                                        <div id="changePasswordTable" class="tab-pane active">
                                            <h3>填写信息</h3>
                                            <div class="form-group"  style="margin-left: 150px">
                                                <label class="control-label col-md-2">输入原来密码:<span class="required">
													* </span></label>

                                                <div class="col-md-3">
                                                    <input class="form-control form-control-inline input-medium date-picker"
                                                           id="oldPassword" name="oldPassword" type="text" value=""/>
                                                </div>
                                            </div>
                                            <br/>
                                            <div class="form-group"  style="margin-left: 150px">
                                                <label class="control-label col-md-2">输入新的密码:<span class="required">
													* </span></label>

                                                <div class="col-md-3">
                                                    <input class="form-control form-control-inline input-medium date-picker"
                                                           id="newPassword" name="newPassword" type="password" value="" style="width:160px;"/>
                                                </div>
                                            </div>
                                            </br>
                                            <div class="form-group"  style="margin-left: 150px">
                                                <label class="control-label col-md-2">输入新的密码:<span class="required">
													* </span></label>

                                                <div class="col-md-3">
                                                    <input class="form-control form-control-inline input-medium date-picker"
                                                           id="copyNewPassword" name="copyNewPassword" type="password" value="" style="width:160px;"/>
                                                </div>
                                            </div>
                                            </br>
                                        </div>
                                    </div>
                                </div>
                                <div class="form-actions">
                                    <div class="row">
                                        <div class="col-md-12">
                                            <div class="col-md-offset-3 col-md-9">
                                                <button class="btn blue" type="submit"><i
                                                        class="fa fa-check"></i>
                                                    修改
                                                </button>
                                            </div>
                                        </div>

                                    </div>
                                </div>

                            </form>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
</body>
</html>
<script>

    $(function () {
        Metronic.init();
        Layout.init();
        $("#successInfo").attr("style","display:none");
        $("input").val("");
    });

    $('#changePassword').validate({
                errorElement: 'span',
                errorClass: 'help-block',
                focusInvalid: false,
                rules: {
                    oldPassword: {
                        required: true,
                        remote: {
                            url: basePath + "user/info/checkOldPassword",
                            type: "post",
                            dataType: "json",
                            data: {
                                oldPassword: function () {
                                    return $("#oldPassword").val().md5();
                                }
                            }
                        }
                    },
                    newPassword: {
                        required: true,
                        minlength: 6,
                        remote: {
                            url: basePath + "user/info/checkNewPassword",
                            type: "post",
                            dataType: "json",
                            data: {
                                newPassword: function () {
                                    return $("#newPassword").val().md5();
                                }
                            }
                        }

                    },
                    copyNewPassword: {
                        required: true,
                        equalTo: '#newPassword'
                    }
                },

                messages: {
                    oldPassword: {
                        required: "请输入旧密码",
                        remote: "密码不正确"
                    },
                    newPassword: {
                        required: "请输入新密码",
                        minlength: "密码长度过小(6位)",
                        remote: "新密码不能与旧密码相同"
                    },
                    copyNewPassword: {
                        required: "请再次输入新密码",
                        equalTo: "两次输入新密码不相同，请重新输入"
                    }
                },
                highlight: function (element) {
                    $(element).closest('.form-group').addClass('has-error');
                },
                success: function (label) {
                    label.closest('.form-group').removeClass('has-error');
                    label.remove();
                },
                errorPlacement: function (error, element) {
                    error.insertAfter(element);
                },
                submitHandler: function () {
                    $.ajax({
                        url: basePath + "user/info/changePassword",
                        data: {
                            password: $("#newPassword").val().md5()
                        },
                        dataType: "json",
                        type: "POST",
                        success: function () {
                            $("#successInfo").attr("style","display:block");
                            $("input").val("");
                        },
                        error:doError
                    })
                }
            }
    );
</script>
