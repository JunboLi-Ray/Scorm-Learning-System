<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %>
<!DOCTYPE html>
<!--[if IE 8]> <html lang="en" class="ie8 no-js"> <![endif]-->
<!--[if IE 9]> <html lang="en" class="ie9 no-js"> <![endif]-->
<!--[if !IE]><!-->
<html lang="en" class="no-js">
<!--<![endif]-->
<head>
    <meta charset="utf-8"/>
    <title>SLS | UserInfo</title>
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta content="width=device-width, initial-scale=1.0" name="viewport"/>
    <%@include file="../../includes/common.jsp" %>
</head>
<body>
<div class="row">
    <div class="col-md-12">
        <div class="portlet box">
            <div class="portlet-body form">
                <div class="portlet-body form">
                    <form class="form-horizontal" id="userInfo" enctype="multipart/form-data">
                        <div class="form-body">
                            <div class="form-group">
                                <label class="control-label col-md-2"><h3></h3></label>
                            </div>
                            <div class="form-group">
                                <label class="control-label col-md-2">头像</label>

                                <div class="col-md-9">
                                    <div class="fileinput fileinput-new" data-provides="fileinput">
                                        <div class="fileinput-new thumbnail"
                                             style="max-width: 200px; max-height: 150px;">
                                            <img id="userPhoto" alt="用户头像"/>
                                        </div>
                                        <div class="fileinput-preview fileinput-exists thumbnail"
                                             style="max-width: 200px; max-height: 150px;">
                                        </div>
                                        <div>
													<span class="btn default btn-file">
														<span class="fileinput-new">
															 选择
														</span>
														<span class="fileinput-exists">
															 换一个
														</span>
														<input type="file" name="upImg" id="upImg"/>
													</span>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="form-group">
                                <label class="control-label col-md-2">昵称</label>

                                <div class="col-md-9">
                                    <input id="nickName"
                                           class="form-control form-control-inline input-medium date-picker"
                                           type="text"
                                           maxlength="20"
                                           value="${user.userName}">
                                </div>
                            </div>
                            <div class="form-group">
                                <label class="control-label col-md-2">性别</label>

                                <div class="col-md-9">
                                    <input type="radio" name="sex" id="sexMale" value="1">男&nbsp;&nbsp;&nbsp;&nbsp;
                                    <input type="radio" name="sex" id="sexFemale" value="0">女
                                </div>
                                </label>
                            </div>
                            <div class="form-group">
                                <label class="control-label col-md-2">标签</label>

                                <div class="col-md-9">
                                        <span class="label label-info"><i class="fa fa-tag"></i>计算机</span>
                                        <span class="label label-info"><i class="fa fa-tag"></i>生物</span>
                                        <span class="label label-info"><i class="fa fa-tag"></i>化学</span>
                                        <span class="label label-info"><i class="fa fa-tag"></i>历史</span>
                                </div>
                            </div>
                        </div>
                        <div class="form-actions fluid">
                            <div class="row">
                                <div class="col-md-12">
                                    <div class="col-md-offset-3 col-md-9">
                                        <a onclick="changeUserInfo()" class="btn purple"><i
                                                class="fa fa-check"></i>
                                            修改
                                        </a>
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

</body>
</html>
<script>
    $(function () {
        if ("${photoUrl}" != "") {
            parent.$("#userHeadPhoto").attr("src", basePath + "${photoUrl}");
            parent.$("#alertMessage").html("修改成功");
            parent.$("#alertModel").modal("show");
        }
        $("#sexMale").attr("checked", true);
        if ("${user.sex}" == "0") {
            $("#sexFemale").attr("checked", true);
        }
        $("#userPhoto").attr("src", "http://www.placehold.it/200x150/EFEFEF/AAAAAA &amp;text=no+image");
        if ("${user.imgUrl}" != "") {
            $("#userPhoto").attr("src", basePath + "${user.imgUrl}");
        }
        jQuery.validator.addMethod("isImg", function (value, element, param) {
            if (param) {
                var imgType = value.substr(value.length - 3, 3);
                if ((imgType != "jpg") && (imgType != "png") && (imgType != "gif")) {
                    return false;
                }
                return true;
            }
        }, "请选择图片文件");
    });
    function changeUserInfo() {
        $.ajax({
            url: basePath + "user/center/editUserInfo",
            data: {
                userId: ${user.userId},
                userName: $("#nickName").val().trim(),
                sex: $("input[name=sex]:checked").val()
            },
            dataType: "json",
            type: "POST",
            success: function () {
                parent.$("#userName").html($("#nickName").val().trim());
                if ($("#upImg").val() != "") {
                    $("#userInfo").attr("method", "post").attr("action",
                            basePath + "user/center/upHeadImg").submit();
                } else {
                    parent.$("#alertMessage").html("修改成功");
                    parent.$("#alertButton").click();
                }
            },
            error: doError
        })
    }
</script>