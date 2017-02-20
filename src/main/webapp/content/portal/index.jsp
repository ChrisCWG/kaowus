<%--
  User: Chris
  Date: 2016/10/3
  Time: 17:19
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ include file="/taglibs.jsp" %>
<html>
<head>
    <%@include file="/common/meta.jsp" %>
    <title>首页</title>
    <%@include file="/common/s.jsp" %>
    <link rel="stylesheet" href="${ctx}/widgets/portal/dashboard.css">
</head>
<body class="container-fluid">
<%@include file="/header/portal.jsp" %>
<div class="row">
<%@include file="portal_main.jsp"%>
</div>
<script type="text/javascript" src="${ctx}/widgets/portal/dashboard.js"></script>
<script type="text/javascript" src="${ctx}/widgets/portal/portal.js"></script>
</body>
</html>
