<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %>
<!DOCTYPE html>
<!--[if IE 8]> <html lang="en" class="ie8 no-js"> <![endif]-->
<!--[if IE 9]> <html lang="en" class="ie9 no-js"> <![endif]-->
<!--[if !IE]><!-->
<html lang="en" class="no-js">
<!--<![endif]-->
<head>
    <meta charset="utf-8"/>
    <title>SLS | AttentionUsers</title>
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta content="width=device-width, initial-scale=1.0" name="viewport"/>
    <%@include file="../../includes/common.jsp" %>
    <script src="<c:url value="/metronic/assets/global/plugins/pace/pace.min.js"/>" type="text/javascript"></script>
    <link href="<c:url value="/metronic/assets/global/plugins/pace/themes/pace-theme-minimal.css"/>" rel="stylesheet"
          type="text/css"/>
</head>
<body class="page-header-fixed" style="background-color: transparent">
<div class="page-content" style="min-height:780px">
    <c:if test="${fn:length(sessionScope.attentionUsers)<1}">
        还未关注用户
    </c:if>
    <div class="row mix-grid">
        <c:forEach var="attentionUser" items="${sessionScope.attentionUsers}">
            <div class="col-md-2 col-sm-2 mix mix_all" style=" display: block;">
                <a onclick="top.userInfo('${attentionUser.userAttentionId}')">
                    <img src="${attentionUser.imgUrl}" class="img-responsive"
                         alt="${attentionUser.userName}" style="height: 100px;width: 100px;">
                        ${attentionUser.userName}
                    <c:if test="${attentionUser.newMessage>0}">
                        <span class="badge">${attentionUser.newMessage}</span>
                    </c:if>
                </a>
            </div>
        </c:forEach>
    </div>
</div>
</body>
</html>
<script type="text/javascript">
    $(function () {
        Portfolio.init();
    })
</script>