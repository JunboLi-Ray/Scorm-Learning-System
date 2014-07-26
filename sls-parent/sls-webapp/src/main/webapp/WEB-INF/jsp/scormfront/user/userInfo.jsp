<%@ taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %>
<!DOCTYPE html>
<!--[if IE 8]> <html lang="en" class="ie8 no-js"> <![endif]-->
<!--[if IE 9]> <html lang="en" class="ie9 no-js"> <![endif]-->
<!--[if !IE]><!-->
<html lang="en" class="no-js">
<!--<![endif]-->
<head>
    <meta charset="utf-8"/>
    <title>SLS | ${user.userName}的主页</title>
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta content="width=device-width, initial-scale=1.0" name="viewport"/>
    <%@include file="../../includes/common.jsp" %>
</head>
<body class="page-header-fixed" style="background-color: #ffffff;overflow-x:hidden">
<%@include file="../index/navigationMenu.jsp" %>
<div class="page-container">
    <!--左侧旁白-->
    <div class="col-md-2">
    </div>
    <div class="col-md-8">
        <!--基本信息-->
        <div class="row">
            <div class="col-md-4">
                <ul class="list-unstyled profile-nav">
                    <li>
                        <img src="${user.imgUrl}" class="img-responsive" alt=""/>
                    </li>
                </ul>
            </div>
            <div class="col-md-8">
                <div class="row">
                    <div class="col-md-8 profile-info">
                        <h1 style="font-weight:bold;">${user.userName}
                            <a class="btn blue" id="userAttention"
                               onclick="userAttentionDeal('${user.userId}')">关注</a>
                        </h1>
                        <br/>
                        <c:if test="${fn:length(labels)>0}">
                            <p>
                                爱好：
                                <c:forEach var="label" items="${labels}">
                                    <a onclick="findByLabel('${label.labelName}')"> <i
                                            class="fa fa-tags"></i>${label.labelName},</a>
                                </c:forEach>
                            </p><br/>
                        </c:if>
                        <p>
                            等级：<span style="font-weight:bold;"> ${user.levelName}</span>&nbsp;&nbsp;${user.score}分
                        </p>

                        <div class="progress progress-striped active">
                            <div class="progress-bar progress-bar-success" role="progressbar" aria-valuenow="40"
                                 aria-valuemin="0"
                                 aria-valuemax="100"
                                 style="width:${user.finalScore}%">
                            </div>
                        </div>
                    </div>
                    <div class="col-md-4">
                        <div class="portlet sale-summary">
                            <div class="portlet-title">
                                <div class="caption">
                                </div>
                            </div>
                            <div class="portlet-body">
                                <ul class="list-unstyled">
                                    <li>
                                        <span class="sale-info">上传课件数</span>
                                        <span class="sale-num">${fn:length(upScorms)}</span>
                                    </li>
                                    <li>
                                        <span class="sale-info">注册课件数</span>
                                        <span class="sale-num">${fn:length(registerScorms)}</span>
                                    </li>
                                    <li>
                                        <span class="sale-info">回答问题数</span>
                                        <span class="sale-num">${fn:length(answerQuestions)}</span>
                                    </li>
                                    <li>
                                        <a class="btn green" id="downQuestion"
                                           onclick="downQuestion()">提问</a>
                                        <a class="btn green" id="upQuestion"
                                           onclick="upQuestion()">取消提问</a>
                                    </li>
                                </ul>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="row" id="questionContent">
            <hr/>
            <div class="col-md-2">
            </div>
            <div class="col-md-8">
                <div class="portlet box blue">
                    <div class="portlet-title">
                        <div class="caption">
                            <i class="fa fa-file-text"></i>提问
                        </div>
                    </div>
                    <div class="portlet-body">
                        <form class="form-horizontal">
                            <div class="form-body">
                                <div class="form-group">
                                    <label class="control-label col-md-2">问题描述:</label>

                                    <div class="col-md-8">
                                        <textarea class="form-control"
                                                  id="questionDescribe" value=""/></textarea>
                                    </div>
                                </div>
                            </div>
                            <div class="form-actions">
                                <div class="row">
                                    <div class="col-md-12">
                                        <div class="col-md-offset-3 col-md-9">
                                            <a class="btn purple" onclick="submitQuestion()"><i class="fa fa-check"></i>
                                                提交问题
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
        <c:if test="${fn:length(upScorms)>0}">
            <div class="row">
                <h3 class="form-section">上传的课件</h3>
                <hr/>

                <c:forEach var="scorm" items="${upScorms}">
                    <a onclick="scormInfo('${scorm.scormId}')">
                        <div class="col-md-2 mix mix_all" style=" display: block;">
                            <img src="${scorm.imgPath}" width="80px" height="80px" class="img-rounded"/>

                            <p>
                                <c:if test="${scorm.showRecommendLevel!=''}">
                                    <img src="${scorm.showRecommendLevel}"
                                         style="width: 15px;height: 15px"/>&nbsp;
                                </c:if>${scorm.scormName}
                            </p>
                        </div>
                    </a>
                </c:forEach>
            </div>
        </c:if>
        <c:if test="${fn:length(registerScorms)>0}">
            <div class="row">
                <h3 class="form-section">注册的课件</h3>
                <hr/>

                <c:forEach var="scorm" items="${registerScorms}">
                    <a onclick="scormInfo('${scorm.scormId}')">
                        <div class="col-md-2 mix mix_all" style=" display: block;">
                            <img src="${scorm.imgPath}" width="80px" height="80px" class="img-rounded"/>

                            <p>
                                <c:if test="${scorm.showRecommendLevel!=''}">
                                    <img src="${scorm.showRecommendLevel}"
                                         style="width: 15px;height: 15px"/>&nbsp;
                                </c:if>${scorm.scormName}
                            </p>
                        </div>
                    </a>
                </c:forEach>
            </div>
        </c:if>
        <c:if test="${fn:length(answerQuestions)>0}">
            <div class="row">
                <h3 class="form-section">回答的问题</h3>
                <hr/>
                <div id="chats">
                    <ul class="chats">
                        <c:forEach var="question" items="${answerQuestions}">
                            <span class="datetime">${question.askDate}</span>
                            <li class="in">
                                <div class="message">
                                    <span class="arrow"></span>
                                    <a class="name">问:</a>
                                    <span class="body">${question.askContent}</span>
                                </div>
                            </li>
                            <li class="out">
                                <div class="message">
                                    <span class="arrow"></span>
                                    <a class="name">答:</a>
                                    <span class="body">${question.answerContent}</span>
                                </div>
                            </li>
                            <hr/>
                        </c:forEach>
                    </ul>
                </div>
            </div>
        </c:if>
    </div>
</div>
<%@include file="../index/footer.jsp" %>
<div id="alertPrompt" class="modal fade" tabindex="-1" role="dialog" aria-labelledby="myModalLabel1" aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-hidden="true"></button>
                <h4 class="modal-title">提示</h4>
            </div>
            <div class="modal-body">
                <p id="alertPromptMessage">
                </p>
            </div>
            <div class="modal-footer">
                <button id="promptButton" class="btn blue" data-dismiss="modal">确认</button>
            </div>
        </div>
    </div>
</div>
</body>
</html>
<script type="text/javascript">
    $(function () {
        Metronic.init();
        Layout.init();
        hideAllQuestionEle();
        <c:if test="${showAttention&&!isAttention}">
        $("#userAttention").html("取消关注");
        <c:if test="${showQuestion}">
        $("#downQuestion").show();
        </c:if>
        </c:if>
    });

    function userAttentionDeal(userId) {
        $.ajax({
            url: basePath + "user/info/userAttentionDeal?userAttentionId=" + userId,
            type: "GET",
            success: function () {
                var attentionEle = $("#userAttention");
                if (attentionEle.html() == "关注") {
                    $("#alertPromptMessage").html("关注成功");
                    $("#alertPrompt").modal("show");
                    attentionEle.html("取消关注");
                    hideAllQuestionEle();
                    <c:if test="${showQuestion}">
                    $("#downQuestion").show();
                    </c:if>
                } else {
                    $("#alertPromptMessage").html("已取消关注");
                    $("#alertPrompt").modal("show");
                    attentionEle.html("关注");
                    hideAllQuestionEle();
                }
            },
            error: doError
        })
    }

    function downQuestion() {
        $("#questionContent").slideDown("slow");
        $("#downQuestion").hide();
        $("#upQuestion").show();
    }

    function upQuestion() {
        $("#questionContent").slideUp("slow");
        $("#upQuestion").hide();
        $("#downQuestion").show();
    }

    function hideAllQuestionEle() {
        $("#downQuestion").hide();
        $("#upQuestion").hide();
        $("#questionContent").hide();
    }

    function submitQuestion() {
        if ($("#questionDescribe").val().trim() == "") {
            return;
        }
        $.ajax({
            url: basePath + "user/info/addUserQuestion",
            dataType: "json",
            type: "post",
            data: {
                answerUserId: "${user.userId}",
                questionDescribe: $("#questionDescribe").val()
            },
            success: function (result) {
                if (result) {
                    $("#alertPromptMessage").html("已提交问题");
                    hideAllQuestionEle();
                } else {
                    $("#alertPromptMessage").html("提交失败<p>1.请查看您是否已关注此用户。<br/>2.请查看您是否已经向该用户提交问题且该问题尚被未回答。</p>");
                }
                $("#alertPrompt").modal("show");
            },
            error: doError
        });
    }
</script>