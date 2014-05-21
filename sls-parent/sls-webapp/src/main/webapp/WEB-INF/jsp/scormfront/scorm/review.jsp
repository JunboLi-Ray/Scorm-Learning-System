<%--@elvariable id="allReviews" type="java.util.List<com.sls.scorm.entity.ScormSummarize>"--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %>
<!DOCTYPE html>
<!--[if IE 8]> <html lang="en" class="ie8 no-js"> <![endif]-->
<!--[if IE 9]> <html lang="en" class="ie9 no-js"> <![endif]-->
<!--[if !IE]><!-->
<html lang="en" class="no-js">
<!--<![endif]-->
<head>
    <meta charset="utf-8"/>
    <title>SLS | ReviewScorm</title>
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta content="width=device-width, initial-scale=1.0" name="viewport"/>
    <%@include file="../../includes/common.jsp" %>
    <link rel="stylesheet" type="text/css" href="<c:url value="/metronic/assets/admin/pages/css/tasks.css"/>"/>
    <style type="text/css">
        ul, li {
            margin: 0;
            padding: 0;
            border: 0;
        }

        .shop-rating {
            height: 25px;
            overflow: hidden;
            zoom: 1;
            padding: 2px 0;
            position: relative;
            z-index: 999;
            font: 12px Arial;
            color: #000;
            line-height: 1.2em
        }

        .shop-rating span {
            height: 23px;
            display: block;
            line-height: 23px;
            float: left;
        }

        .shop-rating span.title {
            width: 125px;
            text-align: right;
            margin-right: 5px;
        }

        .shop-rating ul {
            float: left;
        }

        .shop-rating .result {
            margin-left: 20px;
            padding-top: 2px;
        }

        .shop-rating .result span {
            color: #ff6d02;
        }

        .rating-level,
        .rating-level a {
            background: url(http://images.cnblogs.com/cnblogs_com/bluedream2009/201609/o_star.png) no-repeat scroll 1000px 1000px;
        }

        .rating-level {
            background-position: 0px 0px;
            width: 120px;
            height: 23px;
            position: relative;
            z-index: 1000;
        }

        .shop-rating .result em {
            color: #f60;
            font-family: arial;
            font-weight: bold;
        }

        .rating-level li {
            display: inline;
        }

        .rating-level a {
            line-height: 23px;
            height: 23px;
            position: absolute;
            top: 0px;
            left: 0px;
            text-indent: -999em;
            *zoom: 1;
            outline: none;
        }

        .rating-level a.one-star {
            width: 20%;
            z-index: 6;
        }

        .rating-level a.two-stars {
            width: 40%;
            z-index: 5;
        }

        .rating-level a.three-stars {
            width: 60%;
            z-index: 4;
        }

        .rating-level a.four-stars {
            width: 80%;
            z-index: 3;
        }

        .rating-level a.five-stars {
            width: 100%;
            z-index: 2;
        }

        .rating-level .current-rating, .rating-level a:hover {
            background-position: 0 -28px
        }

        .rating-level a.one-star:hover, .rating-level a.two-stars:hover, .rating-level a.one-star.current-rating, .rating-level a.two-stars.current-rating {
            background-position: 0 -116px;
        }

        .rating-level .three-stars .current-rating, .rating-level .four-stars .current-rating, .rating-level .five-stars .current-rating {
            background-position: 0 -28px;
        }
    </style>
</head>
<body class="page-header-fixed page-full-width">
<div class="clearfix">
</div>
<!-- BEGIN CONTAINER -->
<div class="page-container">
    <div class="page-content-wrapper">
        <div class="page-content">
            <div class="col-md-12">
                <div class="row">
                    <!-- BEGIN PORTLET-->
                    <div class="portlet">
                        <%--<div class="portlet-title line">--%>
                        <%--<div class="caption">--%>
                        <%--<i class="fa fa-comments"></i>课件评论列表--%>
                        <%--</div>--%>
                        <%--</div>--%>
                        <div class="portlet-body" id="chats">
                            <div class="chat-form">
                                <div class="row"></div>
                                <div class="input-cont">
                                    <input id="discussInput" class="form-control" type="text" placeholder="输入评论..."/>
                                </div>
                                <div class="btn-cont">
                                    <span class="arrow"></span>
                                    <a onclick="discussScorm()" class="btn blue icn-only">
                                        <i class="fa fa-check icon-white"></i>
                                    </a>
                                </div>
                            </div>
                            <div class="chat-form">
                                <div class="input-cont">
                                    <%--<div style="margin-left: 0">评分：</div>--%>
                                    <ul style="list-style-type:none;display: block;float: left">
                                        <li style="display: block;float: left">评分:</li>
                                        <li style="display: block;float: left;cursor:pointer" name="changeStar">
                                            <i onclick="onclickStar(1)" class="fa fa-star-o"></i></li>
                                        <li style="display: block;float: left;cursor:pointer" name="changeStar">
                                            <i onclick="onclickStar(2)" class="fa fa-star-o"></i></li>
                                        <li style="display: block;float: left;cursor:pointer" name="changeStar">
                                            <i onclick="onclickStar(3)" class="fa fa-star-o"></i></li>
                                        <li style="display: block;float: left;cursor:pointer" name="changeStar">
                                            <i onclick="onclickStar(4)" class="fa fa-star-o"></i></li>
                                        <li style="display: block;float: left;cursor:pointer" name="changeStar">
                                            <i onclick="onclickStar(5)" class="fa fa-star-o"></i></li>
                                        <%--<li style="display: block;float: left;cursor:pointer"></li>--%>
                                        <input id="showScore">
                                    </ul>
                                    <%--<div class="col-md-1" id="showScore">0分</div>--%>
                                </div>
                            </div>
                            <div class="scroller" style="height: 435px;" data-always-visible="1" data-rail-visible1="1">
                                <ul class="chats">
                                    <c:forEach var="review" items="${allReviews}" varStatus="status">
                                        <c:if test="${0==((status.index) % 2)}">
                                            <li class="in"></c:if>
                                        <c:if test="${0!=((status.index) % 2)}">
                                            <li class="out"></c:if>
                                        <img class="avatar img-responsive" alt="" src="${review.imgUrl}"/>

                                        <div class="message">
											<span class="arrow">
											</span>
                                            <a href="#" class="name">
                                                    ${review.userName} </a>
											<span class="datetime">
                                                    ${review.discussDate}</span>
                                            <span class="body">${review.discuss}</span>
                                        </div>
                                        </li>
                                    </c:forEach>
                                </ul>
                            </div>
                        </div>
                    </div>
                    <!-- END PORTLET-->
                </div>
            </div>
        </div>
        <!-- END CONTENT -->
    </div>
    <!-- END CONTAINER -->
</div>
</body>
<!-- END BODY -->
</html>
<script type="text/javascript">
    $(function () {
        $("li[name='changeStar']").bind({
            mouseover: function () {
                $(this).unbind("click");
                $(this).prevAll().find("i").attr("class", ("fa fa-star"));
                $(this).find("i").attr("class", "fa fa-star");
            },
            mouseleave: function () {
                $(this).unbind("click");
                $(this).prevAll().find("i").attr("class", "fa fa-star-o");
                $(this).find("i").attr("class", "fa fa-star-o");
            }
//            click: function () {
//                $("li[name='changeStar']").unbind("mouseover").unbind("mouseleave");
//                $(this).prevAll().find("i").attr("class", "fa fa-star");
//                $(this).find("i").attr("class", "fa fa-star");
//            }
        })
    });

    function onclickStar(score) {
        var changeStar = $("li[name='changeStar']");
        changeStar.unbind("mouseover").unbind("mouseleave");
        $(this).prevAll().find("i").attr("class", "fa fa-star");
        $(this).find("i").attr("class", "fa fa-star");
        $("#showScore").attr("value", score);

        $.ajax({
            url: basePath + "user/dealScorm/evaluateScorm?scormId=${scormId}",
            data: {
                score: score
            },
            dataType: "json",
            type: "POST",
            success: function () {
                alert("评论成功！")
            },
            error: function () {
                changeStar.bind({
                    mouseover: function () {
                        $(this).unbind("click");
                        $(this).prevAll().find("i").attr("class", ("fa fa-star"));
                        $(this).find("i").attr("class", "fa fa-star");
                    },
                    mouseleave: function () {
                        $(this).unbind("click");
                        $(this).prevAll().find("i").attr("class", "fa fa-star-o");
                        $(this).find("i").attr("class", "fa fa-star-o");
                    }
                })
            }
        })
    }

    function discussScorm() {
        var discuss = $("#discussInput").val().trim();
        if (discuss == "") return;
        $.ajax({
            url: basePath + "user/dealScorm/discussScorm?scormId=${scormId}",
            data: { discuss: discuss },
            type: "POST"
        })
    }
</script>