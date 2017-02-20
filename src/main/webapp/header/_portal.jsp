<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<div class="row clearfix">
    <div class="navbar navbar-default navbar-fixed-top">
        <%--<div class="container">--%>
        <div class="navbar-header">
            <a class="navbar-brand" href="${tenantPrefix}/">
                <img src="${tenantPrefix}/js/favicon.ico" class="img-responsive pull-left"
                     style="margin-top:-5px;margin-right:5px;">
                <sub>
                    <small>1.0.0</small>
                </sub>
            </a>
            <button type="button" class="navbar-toggle" data-toggle="collapse"
                    data-target="#bs-example-navbar-collapse-1"><span
                    class="sr-only">Toggle navigation</span><span class="icon-bar"></span><span
                    class="icon-bar"></span><span class="icon-bar"></span></button>
        </div>
        <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
            <ul class="nav navbar-nav">
                <li class="active">
                    <ul class="nav navbar-nav navbar-right">
                        <li class="dropdown" style="margin-left: 30px">
                            <a href="${tenantPrefix}/kaowu/index"><i class="glyphicon glyphicon-list"></i>考务管理</a>
                        </li>
                    </ul>
                </li>
            </ul>
            <ul class="nav navbar-nav">
                <li class="active">
                    <ul class="nav navbar-nav navbar-right">
                        <li class="dropdown" style="margin-left: 30px">
                            <a href="${tenantPrefix}/luti/index"><i class="glyphicon glyphicon-list"></i>录题管理</a>
                        </li>
                    </ul>
                </li>
            </ul>
            <ul class="nav navbar-nav navbar-right">
                <li>
                    <form class="navbar-form navbar-search" action="${tenantPrefix}" role="search">
                        <div class="form-group">
                            <input type="text" class="form-control search-query" placeholder="搜索"
                                   name="">
                        </div>
                    </form>
                </li>
                <li class="dropdown" style="margin-right: 30px">
                    <a href="#modal-container-20479" data-toggle="modal"><i class="glyphicon glyphicon-user"></i>
                        退出</a>
                </li>
            </ul>
        </div>
        <%--</div>--%>
    </div>
</div>
<div class="modal fade" id="modal-container-20479" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content ">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
                <h4 class="modal-title" id="myModalLabel">
                    提示
                </h4>
            </div>
            <div class="modal-body">
                <h5 align="center"> 您确定退出系统吗？</h5>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-default" data-dismiss="modal">取消</button>
                <a href="${ctx}/j_spring_security_logout" type="button" class="btn btn-default btn-warning">继续</a>
            </div>
        </div>
    </div>
</div>

