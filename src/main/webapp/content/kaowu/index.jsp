<%--
  User: Chris
  Date: 2016/10/3
  Time: 21:47
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ include file="/taglibs.jsp" %>
<html>
<head>
    <%@include file="/common/meta.jsp" %>
    <title>考务管理</title>
    <link rel="stylesheet" type="text/css" href="${ctx}/widgets/common/common.css"/>
    <link rel="stylesheet" type="text/css" href="${ctx}/widgets/kaowu/kaowu.css"/>
    <%@include file="/common/s.jsp" %>
</head>
<body class="container-fluid">

<%@include file="/header/portal.jsp" %>
<%@include file="kaowu-main.jsp"%>
<script type="text/javascript" src="${ctx}/widgets/kaowu/kaowu.js"></script>
</body>
</html>
