<%--@elvariable id="user" type="com.sls.util.LoginUserUtil"--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %>
<!DOCTYPE html>
<!--[if IE 8]> <html lang="en" class="ie8 no-js"> <![endif]-->
<!--[if IE 9]> <html lang="en" class="ie9 no-js"> <![endif]-->
<!--[if !IE]><!-->
<html lang="en" class="no-js">
<!--<![endif]-->
<head>
    <meta charset="utf-8"/>
    <title>SLS | UserCenter</title>
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta content="width=device-width, initial-scale=1.0" name="viewport"/>
    <%@include file="../../includes/common.jsp" %>
</head>
<body class="page-header-fixed">

<%@include file="../index/navigationMenu.jsp" %>

<div class="clearfix">
</div>
<!-- BEGIN CONTAINER -->
<div class="page-container">
    <!-- BEGIN SIDEBAR -->
    <div class="page-sidebar-wrapper">
        <div class="page-sidebar navbar-collapse collapse">
            <!-- BEGIN SIDEBAR MENU -->
            <ul class="page-sidebar-menu" data-auto-scroll="false" data-auto-speed="200">
                <!-- 隐藏框 点击一下变成小图标 -->               <!--  -->
                <li class="sidebar-toggler-wrapper">
                    <div class="sidebar-toggler"></div>
                </li>
                <!-- 用户信息 -->
                <li class="start">
                    <a id="userCenterIndex" onclick="changeIframe('user/center/userCenterInfo')">
                        <i class="fa fa-user"></i><br/>
                        <span class="title">
                        <table>
                            <tr>
                                <td>
                                    &nbsp;<img id="userHeadPhoto" class="img-polaroid" alt="用户头像"
                                               style="max-width:100px;max-height:100px"/>
                                </td>
                                <td>
                                    <span style="margin-left:10px">昵称</span>:&nbsp;&nbsp;<span
                                        id="userNickName">${user.userName}</span><br/>
                                    <span style="margin-left:10px">分数</span>:&nbsp;&nbsp;${user.score}<br/>
                                    <span style="margin-left:10px">等级</span>:&nbsp;&nbsp;${user.levelName}<br/>
                                </td>
                            </tr>
                        </table>
                        </span>
                    </a>
                </li>
                <!-- 第一个菜单  个人资料-->
                <li>
                    <a onclick="changeIframe('user/center/userInfoDo')">
                        <i class="fa fa-italic"></i>
						<span class="title">
							个人资料
						</span>
                    </a>
                </li>
                <!-- 第二个菜单  上传课件 -->
                <li>
                    <a onclick="changeIframe('user/center/upScormDo')">
                        <i class="fa fa-upload"></i>
						<span class="title">
							上传课件
						</span>
                    </a>
                </li>
                <!-- 第三个菜单  我的课件 -->
                <li>

                    <a href="javascript:;">
                        <i class="fa fa-briefcase"></i>
						<span class="title">
							我的课件
						</span>
						<span class="arrow">
						</span>
                    </a>
                    <ul class="sub-menu">
                        <li>
                            <a onclick="changeIframe('user/center/registerScormDo')">
                                <i class="fa fa-bullhorn"></i>
                                <span class="title">
                                    已注册课件
                                </span>
                            </a>
                        </li>
                        <li>
                            <a onclick="changeIframe('user/center/collectScormDo')">
                                <i class="fa fa-bullhorn"></i>
                                <span class="title">
									我的收藏
								</span>
                            </a>
                        </li>
                        <li>
                            <a onclick="changeIframe('user/center/myUpScormsDo')">
                                <i class="fa fa-bullhorn"></i>
                                <span class="title">
									我的上传
								</span>
                            </a>
                        </li>
                    </ul>
                </li>
                <!-- 第四个菜单  我的笔记本 -->

                <li class="last ">
                    <a onclick="changeNoteIframe('user/center/notesDo')">
                        <i class="fa fa-book"></i>
						<span class="title">
							我的笔记本
						</span>
                    </a>
                </li>
            </ul>
            <!-- END SIDEBAR MENU -->
        </div>
    </div>
    <!-- END SIDEBAR -->
    <!-- BEGIN CONTENT -->
    <div class="page-content-wrapper">
        <div class="page-content">
            <iframe id="iframe" style="min-height: 1200px;width:100%;"
                    frameborder=no
                    scrolling="no"
                    allowfullscreen>
            </iframe>
        </div>
    </div>
    <!-- END CONTENT -->
</div>
<!-- END CONTAINER -->
<!-- BEGIN FOOTER -->
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
                <button id="alertButton" class="btn blue" data-dismiss="modal">确认</button>
            </div>
        </div>
    </div>
</div>
<div id="alertConfirm" class="modal fade" tabindex="-1" role="dialog" aria-labelledby="myModalLabel1"
     aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-hidden="true"></button>
                <h4 class="modal-title">提示</h4>
            </div>
            <div class="modal-body">
                <p id="alertConfirmMessage">
                </p>
            </div>
            <div class="modal-footer">
                <button id="promptButton1" class="btn default" data-dismiss="modal">确认</button>
                <button id="promptButton2" class="btn default" data-dismiss="modal">取消</button>
            </div>
        </div>
    </div>
</div>
<div id="alertIframe" class="modal fade" tabindex="-1" role="dialog" aria-labelledby="myModalLabel1" aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-hidden="true"></button>
                <h4 class="modal-title"></h4>
            </div>
            <div>
                <iframe id="iframeInfo" style="width:100%; height:500px;border:1px;" frameborder=no allowfullscreen>
                </iframe>
            </div>
            <div class="modal-footer">
            </div>
        </div>
    </div>
</div>
<div id="maskNotes" class="modal fade" tabindex="-1" role="dialog" aria-labelledby="myModalLabel1" aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content">
        </div>
    </div>
</div>
</body>
</html>
<script>
    $(function () {
        Metronic.init(); // init metronic core componets
        Layout.init(); // init layout
        Tasks.initDashboardWidget();
        $("#userHeadPhoto").attr("src", basePath + "${user.imgUrl}");
        $("#userCenterIndex").click();
    })

    function changeIframe(src) {
        $("#iframe").attr("src", src);
    }

    function changeNoteIframe(src) {
        $("#iframe").attr("src", src);
        $("#maskNotes").modal("show");
    }

    $('ul.page-sidebar-menu ').on('click', ' li > a', function (e) {
        var menuContainer = $('ul.page-sidebar-menu ');
        menuContainer.children('li.active').removeClass('active');
        menuContainer.children('arrow.open').removeClass('open');
        $(this).parents('li').each(function () {
            $(this).addClass('active');
            $(this).children('a > span.arrow').addClass('open');
        });
        $(this).parents('li').addClass('active');
        $('.selected').remove();
        $(this).parents('li').find("a").append('<span class="selected" ></span>');
    });

</script>