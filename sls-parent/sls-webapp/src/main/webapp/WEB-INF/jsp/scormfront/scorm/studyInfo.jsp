<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %>
<!DOCTYPE html>
<!--[if IE 8]> <html lang="en" class="ie8 no-js"> <![endif]-->
<!--[if IE 9]> <html lang="en" class="ie9 no-js"> <![endif]-->
<!--[if !IE]><!-->
<html lang="en" class="no-js">
<!--<![endif]-->
<head>
    <meta charset="utf-8"/>
    <title>SLS | ScormTree</title>
    <%@include file="../../includes/common.jsp" %>
    <link rel="stylesheet" type="text/css" href="<c:url value="/metronic/assets/admin/pages/css/profile.css"/>"/>
    <link rel="stylesheet" type="text/css"
          href="<c:url value="/js/common/zTree-v3.5.14/css/zTreeStyle/zTreeStyle.css"/>"/>
    <script src="<c:url value="/js/common/zTree-v3.5.14/js/jquery.ztree.all-3.5.min.js"/>"
            type="text/javascript"></script>
</head>
<body class="page-boxed page-header-fixed">
<div class="page-container">
    <div class="page-content-wrapper">
        <div class="page-content">
            <div class="col-md-12">
                <div class="row">
                    <div class="col-md-2" style="float: left">
                        <img style="width: 150px" src="img/others/flag_top.png" alt=""/><br/>
                        <img id="scormImg" src="${scorm.imgPath}" class="img-polaroid"
                             style="width: 150px;height: 100px" alt=""/><br/>
                        <img style="width: 150px" src="img/others/flag_center.png" alt=""/>
                    </div>
                    <div class="col-md-10" style="float: left">
                        <div class="row">
                            <div class="col-md-10">
                                <div class="portlet-body form">
                                    <div class="form-body">
                                        <h3 class="form-section">
                                            <c:if test="${scorm.showRecommendLevel!=''}">
                                                <img src="${scorm.showRecommendLevel}" width="25px" height="25px">
                                            </c:if>
                                            ${scorm.scormName}
                                        </h3>
                                        <a class="btn blue" onclick="scormInfo('${scorm.scormId}')">课件信息</a>
                                        <br/><br/>

                                        <div class="form-group profile-info">
                                            <ul class="list-inline" style="width: 250px;">
                                                <li>完成时间:</li>
                                                <li>${summarize.completeDate}</li>
                                                <br/>

                                                <li>课件成绩:</li>
                                                <li>${summarize.grade}</li>
                                                <br/>

                                                <li>学习时间:</li>
                                                <li>${summarize.totalTime}</li>
                                                <br/>

                                                <li>上次学习时间:</li>
                                                <li>${summarize.lastVisitTime}</li>
                                                <br/>

                                                <li>评分:</li>
                                                <li>${summarize.score}分</li>
                                                <br/>

                                                <li>评论:</li>
                                                <li>${summarize.discussDate}</li>
                                                <br/>

                                                <li>内容:</li>
                                                <li>${summarize.discuss}</li>
                                            </ul>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="row">
                    <div class="col-md-12">
                        <div class="tabbable tabbable-custom tabbable-custom-profile">
                            <ul class="nav nav-tabs">
                                <li class="active">
                                    <a href="#tab_1" data-toggle="tab">
                                        学习情况
                                    </a>
                                </li>
                                <li>
                                    <a href="#tab_2" data-toggle="tab">
                                        学习笔记
                                    </a>
                                </li>
                            </ul>
                            <div class="tab-content" style="min-height: 200px">
                                <div class="tab-pane active" id="tab_1">
                                    <div class="scroller" data-always-visible="1"
                                         data-rail-visible1="1">
                                        <ul id="scoTree" class="ztree"></ul>
                                    </div>
                                </div>
                                <div class="tab-pane" id="tab_2">
                                    <div class="scroller" style="min-height: 200px;" data-always-visible="1"
                                         data-rail-visible1="1">
                                        <%
                                            String[] color = {"success", "info", "danger", "warning"};
                                        %>
                                        <c:forEach var="note" items="${noteList}">
                                            <div class="note note-<%=color[(int)(Math.random()*100)%4]%>">
                                                <h4 class="block">${note.date}</h4>

                                                <p>
                                                    <c:if test="${note.noteType==text}">
                                                        ${note.note}
                                                    </c:if>
                                                    <c:if test="${note.noteType!=text}">
                                                        <img src="${note.note}"/>
                                                    </c:if>
                                                </p>
                                            </div>
                                        </c:forEach>
                                    </div>
                                </div>
                            </div>
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
    var settingMenu = {
        view: {
            expandSpeed: "fast"
        },
        check: {
            enable: false
        },
        data: {
            simpleData: {
                enable: true,
                idKey: "id",
                pIdKey: "pId"
            }
        }
    };

    var zNodes = [
        <c:forEach var="scoNode" items="${scoList}">
        {id: "${scoNode.treeId}",
            pId: "${scoNode.treeParentId}",
            name: "(${scoNode.showStudyState})${scoNode.title} <c:if test="${scoNode.lastVisit==isLast}">(上次学到这了)</c:if>"
        },
        </c:forEach>
    ];

    $(function () {
        $.fn.zTree.init($("#scoTree"), settingMenu, zNodes).expandAll(true);
    });

    function scormInfo(scormId) {
        parent.$(".modal-title").html("课件信息");
        parent.$("#iframeInfo").attr("src", "tourist/scormInfo?scormId=" + scormId);
    }
</script>