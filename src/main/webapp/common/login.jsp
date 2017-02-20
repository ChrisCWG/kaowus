<%--
  User: Chris
  Date: 2016/9/10
  Time: 13:04
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ include file="/taglibs.jsp" %>
<!DOCTYPE html>
<html>
<head>
    <%@include file="/common/meta.jsp" %>
    <%--<sec:csrfMetaTags/>--%>
    <title>登录</title>
    <%@include file="/common/s.jsp" %>
</head>
<body class="container-fluid">
<div class="row" style=" margin:100px auto 15% auto;width: 100%;">
    <div class="container-fluid">
        <div class="col-md-4"></div>
        <section class="col-md-4">
            <article class="panel panel-default">
                <header class="panel-heading">
                    <c:choose>
                        <c:when test="${sessionScope['SPRING_SECURITY_LAST_EXCEPTION'].message == 'Bad credentials'}">
                            <span style="color: red ;font-family: 'Courier New';font-weight: bold">口令</span>
                        </c:when>
                        <c:otherwise>
                            <span style="font-family: 'Courier New';font-weight: bold">口令</span>
                        </c:otherwise>
                    </c:choose>
                </header>
                <div class="panel-body" style="padding: 15px">
                    <form id="userForm" name="f" method="post" action="${ctx}/j_spring_security_check"
                          class="form-horizontal">
                        <div class="form-group">
                            <label class="col-md-2 control-label" for="password"></label>
                            <div class="col-md-10">
                                <input type='password' id="password" name='password' required="required"
                                       class="form-control" placeholder="口令">
                            </div>
                        </div>
                        <div class="form-group">
                            <div class="col-md-2">
                            </div>
                            <div class="col-md-10">
                                <input class="btn btn-default" name="submit" type="submit"
                                       value="登录"/>
                            </div>
                        </div>
                        <input type="hidden" name="username" value="admin"/>
                    </form>
                </div>
            </article>
            <div class="m-spacer"></div>
        </section>
    </div>
</div>
<!--内容容器-->
<div id="container"   style="width:100%; margin: auto auto 0px auto;"
     class="row">
</div>
<script id="appVer" type="text/html">
    <table class="table" style="margin: auto" class="table table-condensed">
        <tr>
            <th style="width:33%;">程序名称</th>
            <th style="width:33%;">版本号</th>
            <th style="width:33%;">更新时间</th>
        </tr>
        {{each appVer}}
        <tr>
            <td>{{$value['程序名称']}}</td>
            <td>{{$value['版本号']}}</td>
            <td>{{$value['更新时间']}}</td>
        </tr>
        {{/each}}
    </table>
</script>
<script type="text/javascript" src="${ctx}/widgets/common/common.js"></script>
</body>
</html>


