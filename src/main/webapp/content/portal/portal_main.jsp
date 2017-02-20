<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<div data-height="300" class="container-fluid dashboard dashboard-draggable" id="dashboard" style="margin-top:70px;">
    <section class="row clearfix">
        <div class="portal-col col-md-4 col-sm-6" data-id="1" data-order="1">
            <div data-id="331241949986816" class="portlet" data-order="1">
                <div class="panel panel-default panel-error"
                     id="panel331241949986816" data-id="331241949986816">
                    <div class="panel-heading">
                        <div class="panel-actions">
                            <button onclick="appVerFun()"  class="btn btn-sm refresh-panel"><i class="glyphicon glyphicon-refresh"></i>
                            </button>
                            <%--<div class="dropdown">--%>
                            <%--<button data-toggle="dropdown" class="btn btn-sm" role="button"><span--%>
                            <%--class="caret"></span></button>--%>
                            <%--<ul aria-labelledby="dropdownMenu1" role="menu" class="dropdown-menu">--%>
                            <%--<li><a href="javascript:void(0);updateWidget(331241949986816, 4, '版本信息')"><i--%>
                            <%--class="glyphicon glyphicon-pencil"></i> 编辑</a></li>--%>
                            <%--<li><a class="remove-panel" href="#"><i class="glyphicon glyphicon-remove"></i>--%>
                            <%--移除</a></li>--%>
                            <%--</ul>--%>
                            <%--</div>--%>
                        </div>
                        <i class="glyphicon glyphicon-list"></i> 版本信息
                    </div>
                    <div class="panel-body no-padding" style="height: 264px;" id="divAppVer">

                    </div>
                </div>
            </div>

        </div>

        <%--<div class="portal-col col-md-4 col-sm-6" data-id="2" data-order="2">--%>
            <%--<div data-id="331241950003200" class="portlet" data-order="1">--%>
                <%--<div data-url=""  class="panel panel-default panel-error" id="panel33124195000320"--%>
                     <%--data-id="33124195000320">--%>
                    <%--<div class="panel-heading">--%>
                        <%--<div class="panel-actions">--%>
                            <%--<button class="btn btn-sm refresh-panel"><i class="glyphicon glyphicon-refresh"></i>--%>
                            <%--</button>--%>
                        <%--</div>--%>
                        <%--<i class="glyphicon glyphicon-list"></i> 近期考试--%>
                    <%--</div>--%>
                    <%--<div class="panel-body no-padding" style="height: 264px;padding-top: 10%">--%>

                    <%--</div>--%>
                <%--</div>--%>
            <%--</div>--%>

        <%--</div>--%>
        <div class="portal-col col-md-4 col-sm-6" data-id="3" data-order="3">
            <div data-id="331241950003200" class="portlet" data-order="1">
                <div  data-url="/widgets/weather.html"  class="panel panel-default panel-error" id="panel331241950003200"
                     data-id="331241950003200">
                    <div class="panel-heading">
                        <div class="panel-actions">
                            <button class="btn btn-sm refresh-panel"><i class="glyphicon glyphicon-refresh"></i>
                            </button>
                        </div>
                        <i class="glyphicon glyphicon-list"></i> 天气预报
                    </div>
                    <div  class="panel-body no-padding" style="height: 264px;padding-top: 10%">
                    </div>
                </div>
            </div>
        </div>
    </section>
</div>

<script id="appVer" type="text/html">
    <table class="table table-condensed table-hover" style="margin: auto">
        <tr>
            <th style="width:33%;font-size: 12px;">程序名称</th>
            <th style="width:33%;font-size: 12px;">版本号</th>
            <th style="width:33%;font-size: 12px;">更新时间</th>
        </tr>
        {{each appVer}}
        <tr >
            <td style="width:33%;font-size: 12px;">{{$value['程序名称']}}</td>
            <td style="width:33%;font-size: 12px;">{{$value['版本号']}}</td>
            <td style="width:33%;font-size: 12px;">{{$value['更新时间']}}</td>
        </tr>
        {{/each}}
    </table>
</script>

