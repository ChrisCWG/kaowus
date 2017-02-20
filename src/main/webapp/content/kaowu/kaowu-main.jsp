<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<div class="row clearfix">
    <div class="col-md-12 column">
        <br/><br/><br/>
    </div>
</div>
<%@include file="/content/common/alert.jsp" %>
<div class="row clearfix">
    <div class="col-md-2 column">
        <div class="panel-group" id="panel-707382">
            <div class="panel panel-default">
                <div class="panel-heading">
                    <a class="panel-title" id="winXueQi" data-toggle="collapse" data-parent="#panel-707382"
                       href="#768913"><p class="glyphicon glyphicon-list" style="width:100%;">学　期</p></a>
                </div>
                <div id="768913" class="panel-collapse collapse in">
                    <div class="list-group" id="divXueQi">

                    </div>
                </div>
            </div>
            <div class="panel panel-default">
                <div class="panel-heading">
                    <a class="panel-title collapsed" id="winTools" data-toggle="collapse" data-parent="#panel-707382"
                       href="#panel-element-163230">
                        <p class="glyphicon glyphicon-list" style="width:100%;">工　具</p>
                    </a>
                </div>
                <div id="panel-element-163230" class="panel-collapse collapse">
                    <div class="list-group">
                        <a href="javascript:void(0)" id="but_kaowu_add" class="list-group-item glyphicon glyphicon-plus">添加考务</a>
                        <a href="javascript:void(0)" id="but_kaowu_manage"
                           class="list-group-item glyphicon glyphicon-list-alt">管理其他</a>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div class="col-md-10 column">
        <div id="kaowu_content">

        </div>
        <%@include file="_kaowu.jsp" %>
        <%@include file="_tools.jsp"%>
    </div>

</div>
<script id="tplXueQi" type="text/html">
    {{each xueQiArr}}
    <a href="javascript:void(0)" id="{{$index}}" name="{{$value['xueQiMingCheng']}}"
       onclick="getXueXiao(this.id,this.name)" class="list-group-item">{{$value['xueQiMingCheng']}}</a>
    {{/each}}
</script>