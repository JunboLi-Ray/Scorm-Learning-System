<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html lang="en" class="no-js" xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta charset="utf-8"/>
    <title>Metronic | UI Components - Form Tools</title>
    <meta http-equiv="Content-Type" content="text/html;charset=UTF-8"/>
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta content="width=device-width, initial-scale=1.0" name="viewport"/>
    <meta content="" name="description"/>
    <meta content="" name="author"/>
    <%@include file="../../../includes/common.jsp" %>
</head>
<body>
<div class="row">
    <div class="col-md-12">
        <div class="portlet box">
            <div class="portlet-body form">
                <form class="form-horizontal" id="fileGetUp" method="post"
                      enctype="multipart/form-data">
                    <div class="form-body">
                        <div class="form-group">
                            <label class="control-label col-md-2"><h3></h3></label>
                        </div>
                        <div class="form-group">
                            <label class="control-label col-md-2">课件名称</label>

                            <div class="col-md-3">
                                <input class="form-control form-control-inline input-medium date-picker"
                                       id="scormName" type="text" value=""/>
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="control-label col-md-2">选择图片</label>

                            <div class="col-md-9">
                                <div class="fileinput fileinput-new" data-provides="fileinput">
                                    <div class="fileinput-new thumbnail"
                                         style="width: 200px; height: 150px;">
                                        <img src="http://www.placehold.it/200x150/EFEFEF/AAAAAA&amp;text=no+image"
                                             alt=""/>
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
                                <div class="clearfix margin-top-10">
												<span class="label label-danger">
													 提示!
												</span>
                                    图片预览只支持 IE10+, FF3.6+, Safari6.0+, Chrome6.0+ and
                                    Opera11.1+.
                                </div>
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="control-label col-md-2">选择SCORM课件<br/>（仅支持1.2版本）</label>

                            <div class="col-md-9">
                                <div class="fileinput fileinput-new" data-provides="fileinput">
                                    <div class="input-group input-large">
                                        <div class="form-control uneditable-input span3"
                                             data-trigger="fileinput">
                                            <i class="fa fa-file fileinput-exists"></i>&nbsp;
														<span class="fileinput-filename">
														</span>
                                        </div>
													<span class="input-group-addon btn default btn-file">
														<span class="fileinput-new">
															 选择
														</span>
														<span class="fileinput-exists">
															 换一个
														</span>
														<input type="file" name="upScorm" id="upScorm"/>
													</span>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="control-label col-md-2">课件简介</label>

                            <div class="col-md-3">
                                <textarea class="form-control"
                                          name="description" value=""/></textarea>
                            </div>
                        </div>
                    </div>
                    <div class="form-actions fluid">
                        <div class="row">
                            <div class="col-md-12">
                                <div class="col-md-offset-3 col-md-9">
                                    <a onclick="fileUpAttachment()" class="btn purple"><i
                                            class="fa fa-check"></i>
                                        上传
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


</body>
</html>
<script>
    jQuery(document).ready(function () {
        App.init();
    });

    function fileUpAttachment() {
        if ($("#scormName").val().trim() == "") {
            alert("请输入名称！");
            return;
        }
        var imgType = $("#upImg").val().substr($("#upImg").val().length - 3, 3);
        if ((imgType != "jpg") && (imgType != "png") && (imgType != "gif")) {
            alert("必须是图片格式！");
            return;
        }
        if ($("#upScorm").val().substr($("#upScorm").val().length - 3, 3) != "zip") {
            alert("必须是zip格式!");
            return;
        }
        $("#fileGetUp").attr("action",
                basePath + "user/center/upScorm?scormName=" + $("#scormName").val()).submit();
    }
</script>