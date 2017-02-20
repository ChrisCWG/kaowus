<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<script type="text/html" id="tpl_tools">
    <div id="_tools_content">

    </div>
</script>
<script type="text/html" id="tpl_tools_add">
    <div class="panel panel-default">
        <div class="panel-heading">
            添加考务信息
            <div class="pull-right">
                <button class="btn btn-sm refresh-panel" onclick="but_kaowu_add()" title="添加"><i
                        class="glyphicon glyphicon-ok"></i>
                </button>
                <%--<button class="btn btn-sm refresh-panel" title="关闭" onclick="but_kaowu_tools_back()"><i--%>
                <%--class="glyphicon glyphicon-remove"></i>--%>
                <%--</button>--%>
            </div>
        </div>
        <div class="panel-body">
            <div class="row clearfix">
                <form id="form_kaowu_add">
                    <div class="col-md-12 column">
                        <div class="form-group">
                            <%--<label for="input0" class="col-sm-2 control-label">ID</label>--%>
                            <div class="col-sm-10">
                                <input type="hidden" class="form-control" name="id" readonly="readonly" value="{{id}}"
                                       id="id"/>
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="col-sm-12 control-label"></label>
                        </div>
                        <div class="row clearfix">
                            <div class="col-md-6 column">
                                <div class="form-group">
                                    <label for="code" class="col-sm-2 control-label">编　码</label>
                                    <div class="col-sm-10">
                                        <input type="text" name="code" class="form-control" required="required"
                                               value="{{code}}"
                                               id="code"
                                        />
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label class="col-sm-12 control-label"></label>
                                </div>
                                <div class="form-group">
                                    <label for="_tools_add_xueqi" class="col-sm-2 control-label">学　期</label>
                                    <div class="col-sm-10">
                                        <select class="form-control" name="xueqi_id" id="_tools_add_xueqi"
                                                data-options="required:true">

                                        </select>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label class="col-sm-12 control-label"></label>
                                </div>
                                <div class="form-group">
                                    <label for="_tools_add_xuexiao" class="col-sm-2 control-label">学　校</label>
                                    <div class="col-sm-10" >
                                        <select class="form-control" ONCHANGE="but_tools_add_jiaoshi_init(this.value)" name="xuexiao_id" id="_tools_add_xuexiao"
                                                data-options="required:true">

                                        </select>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label class="col-sm-12 control-label"></label>
                                </div>
                                <div class="form-group">
                                    <label for="_tools_add_jiaoshi" class="col-sm-2 control-label">教　师</label>
                                    <div class="col-sm-10">
                                        <select class="form-control" name="jiaoshi_id" id="_tools_add_jiaoshi"
                                                data-options="required:true">

                                        </select>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label class="col-sm-12 control-label"></label>
                                </div>
                                <div class="form-group">
                                    <label for="_tools_add_kemu" class="col-sm-2 control-label">科　目</label>
                                    <div class="col-sm-10">
                                        <select class="form-control" name="kemu_id" id="_tools_add_kemu"
                                                data-options="required:true">

                                        </select>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label class="col-sm-12 control-label"></label>
                                </div>
                                <div class="form-group">
                                    <label for="zhuangTai" class="col-sm-2 control-label">状　态</label>
                                    <div class="col-sm-10">
                                        <select class="form-control" name="zhuangTai" id="zhuangTai"
                                                data-options="required:true">
                                            <option value="0">未开始</option>
                                            <option value="10">筹备中</option>
                                            <option value="20">正在报名</option>
                                            <option value="30">已发布</option>
                                            <option value="40">考试中</option>
                                            <option value="50">正在阅卷</option>
                                            <option value="60">成绩发布</option>
                                            <option value="70">已完成</option>
                                            <option value="-10">已取消</option>
                                            <option value="-20">已终止</option>
                                            <option value="-100">已删除</option>
                                        </select>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label class="col-sm-12 control-label"></label>
                                </div>
                                <div class="form-group">
                                    <label for="kaoShi" class="col-sm-2 control-label">考　试</label>
                                    <div class="col-sm-10">
                                        <textarea name="kaoShi" class="form-control" id="kaoShi">{{kaoShi}}</textarea>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label class="col-sm-12 control-label"></label>
                                </div>
                                <div class="form-group">
                                    <label for="shiJian" class="col-sm-2 control-label">时　间</label>
                                    <div class="col-sm-10">
                                        <textarea name="shiJian" class="form-control"
                                                  id="shiJian">{{shiJian}}</textarea>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label class="col-sm-12 control-label"></label>
                                </div>
                                <div class="form-group">
                                    <label for="renShu" class="col-sm-2 control-label">人　数</label>
                                    <div class="col-sm-10">
                                        <textarea name="renShu" class="form-control" id="renShu">{{renShu}}</textarea>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label class="col-sm-12 control-label"></label>
                                </div>
                                <div class="form-group">
                                    <label for="kaoChang" class="col-sm-2 control-label">考　场</label>
                                    <div class="col-sm-10">
                                        <textarea name="kaoChang" class="form-control"
                                                  id="kaoChang">{{kaoChang}}</textarea>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label class="col-sm-12 control-label"></label>
                                </div>
                                <div class="form-group">
                                    <label for="changCi" class="col-sm-2 control-label">场　次</label>
                                    <div class="col-sm-10">
                                        <textarea name="changCi" class="form-control"
                                                  id="changCi">{{changCi}}</textarea>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label class="col-sm-12 control-label"></label>
                                </div>
                                <div class="form-group">
                                    <label for="tiMu" class="col-sm-2 control-label">题　目</label>
                                    <div class="col-sm-10">
                                        <textarea name="tiMu" class="form-control" id="tiMu">{{tIMU}}</textarea>
                                    </div>
                                </div>
                            </div>
                            <div class="col-md-6 column">

                                <div class="form-group">
                                    <label for="zhuGuanTi" class="col-sm-2 control-label">主观题</label>
                                    <div class="col-sm-10">
                            <textarea name="zhuGuanTi" class="form-control" id="zhuGuanTi"
                            >{{zhuGuanTi}}</textarea>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label class="col-sm-12 control-label"></label>
                                </div>
                                <div class="form-group">
                                    <label for="dianZhenBi" class="col-sm-2 control-label">点阵笔</label>
                                    <div class="col-sm-10">
                            <textarea name="dianZhenBi" class="form-control" id="dianZhenBi"
                            >{{dianZhenBi}}</textarea>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label class="col-sm-12 control-label"></label>
                                </div>
                                <div class="form-group">
                                    <label for="daTiZhi" class="col-sm-2 control-label">答题纸</label>
                                    <div class="col-sm-10">
                                        <textarea name="daTiZhi" class="form-control"
                                                  id="daTiZhi">{{daTiZhi}}</textarea>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label class="col-sm-12 control-label"></label>
                                </div>
                                <div class="form-group">
                                    <label for="baoMing" class="col-sm-2 control-label">报　名</label>
                                    <div class="col-sm-10">
                                        <textarea name="baoMing" class="form-control"
                                                  id="baoMing">{{baoMing}}</textarea>
                                    </div>
                                </div>

                                <div class="form-group">
                                    <label class="col-sm-12 control-label"></label>
                                </div>
                                <div class="form-group">
                                    <label for="shiJuan" class="col-sm-2 control-label">试　卷</label>
                                    <div class="col-sm-10">
                                        <textarea name="shiJuan" class="form-control"
                                                  id="shiJuan">{{shiJuan}}</textarea>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label class="col-sm-12 control-label"></label>
                                </div>
                                <div class="form-group">
                                    <label for="jinDu" class="col-sm-2 control-label">进　度</label>
                                    <div class="col-sm-10">
                                        <textarea name="jinDu" class="form-control" id="jinDu">{{jinDu}}</textarea>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label class="col-sm-12 control-label"></label>
                                </div>
                                <div class="form-group">
                                    <label for="kaoChangBuShu" class="col-sm-3 control-label">考场部署</label>
                                    <div class="col-sm-9">
                            <textarea name="kaoChangBuShu" class="form-control" id="kaoChangBuShu"
                            >{{kaoChangBuShu}}</textarea>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label class="col-sm-12 control-label"></label>
                                </div>
                                <div class="form-group">
                                    <label for="zhiShiDaGang" class="col-sm-3 control-label">知识大纲</label>
                                    <div class="col-sm-9">
                            <textarea name="zhiShiDaGang" class="form-control" id="zhiShiDaGang"
                            >{{zhiShiDaGang}}</textarea>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label class="col-sm-12 control-label"></label>
                                </div>
                                <div class="form-group">
                                    <label for="kaoShengXinXi" class="col-sm-3 control-label">考生信息</label>
                                    <div class="col-sm-9">
                            <textarea name="kaoShengXinXi" class="form-control" id="kaoShengXinXi"
                            >{{kaoShengXinXi}}</textarea>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label class="col-sm-12 control-label"></label>
                                </div>
                                <div class="form-group">
                                    <label for="canYuJiaoShi" class="col-sm-3 control-label">参与教师</label>
                                    <div class="col-sm-9">
                            <textarea name="canYuJiaoShi" class="form-control" id="canYuJiaoShi"
                            >{{canYuJiaoShi}}</textarea>
                                    </div>
                                </div>

                            </div>
                        </div>
                        <div class="form-group">
                            <label for="beiZhu">备注</label>
                            <textarea class="form-control" name="beiZhu" id="beiZhu" rows="3">{{beiZhu}}</textarea>
                        </div>

                    </div>
                </form>
            </div>
        </div>

    </div>

</script>
<script type="text/html" id="tpl_tools_manage">
    <div class="row clearfix">
        <div class="col-md-12" style="padding-bottom:10px;">
            <a class="btn btn-default" href="#20410" data-toggle="modal">
                <i class="glyphicon glyphicon-plus"></i>
                添加新学期
            </a>
            <a class="btn btn-default" href="#20411" onclick="but_tools_xuexiao_init()" data-toggle="modal">
                <i class="glyphicon glyphicon-plus"></i>
                添加新学校
            </a>
            <a class="btn btn-default" href="#20412" onclick="but_tools_jiaoshi_init()" data-toggle="modal">
                <i class="glyphicon glyphicon-plus"></i>
                添加新教师
            </a>
            <a class="btn btn-default" href="#20413" data-toggle="modal">
                <i class="glyphicon glyphicon-plus"></i>
                添加新科目
            </a>
        </div>
    </div>
    <div class="row clearfix">
        <div class="col-sm-2 column">
            <div class="panel panel-default">
                <div class="panel-heading" data-toggle="collapse">
                    学期
                    <div class="pull-right">
                        <button class="btn btn-sm refresh-panel" onclick="but_tools_xueqi_show()"><i
                                class="glyphicon glyphicon-refresh"></i>
                        </button>
                        <a data-toggle="collapse" data-parent="#panel-10003"
                           href="#20003">
                            <button class="btn btn-sm refresh-panel">
                                <i class="glyphicon glyphicon-chevron-up"></i></button>
                        </a>
                    </div>
                </div>
                <div class="panel-body" id="20003" style="padding-top: 0px;padding-bottom: 0px">
                    <div id="_tools_xueqi_show">

                    </div>
                </div>
            </div>
        </div>
        <div class="col-sm-4">
            <div class="panel panel-default">
                <div class="panel-heading">
                    学校
                    <div class="pull-right">
                        <button class="btn btn-sm refresh-panel" onclick="but_tools_xuexiao_show()"><i
                                class="glyphicon glyphicon-refresh"></i>
                        </button>
                        <a data-toggle="collapse" data-parent="#panel-10002"
                           href="#20002">
                            <button class="btn btn-sm refresh-panel">
                                <i class="glyphicon glyphicon-chevron-up"></i></button>
                        </a>
                    </div>
                </div>
                <div class="panel-body" id="20002" style="padding-top: 0px;padding-bottom: 0px">
                    <div id="_tools_xuexiao_show">

                    </div>
                </div>

            </div>
        </div>
        <div class="col-sm-3">
            <div class="panel-group" id="panel-10000">
                <div class="panel panel-default">
                    <div class="panel-heading">
                        教师
                        <div class="pull-right">
                            <button class="btn btn-sm refresh-panel" onclick="but_tools_jiaoshi_show()"><i
                                    class="glyphicon glyphicon-refresh"></i>
                            </button>
                            <a data-toggle="collapse" data-parent="#panel-10000"
                               href="#20000">
                                <button class="btn btn-sm refresh-panel">
                                    <i class="glyphicon glyphicon-chevron-up"></i></button>
                            </a>
                        </div>
                    </div>
                    <div id="20000" class="panel-body" style="padding-top: 0px;padding-bottom: 0px">
                        <div id="_tools_jiaoshi_show">

                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="col-sm-3">
            <div class="panel panel-default">
                <div class="panel-heading">
                    科目
                    <div class="pull-right">
                        <button class="btn btn-sm refresh-panel" onclick="but_tools_kemu_show()"><i
                                class="glyphicon glyphicon-refresh"></i>
                        </button>
                        <a data-toggle="collapse" data-parent="#panel-10001"
                           href="#20001">
                            <button class="btn btn-sm refresh-panel">
                                <i class="glyphicon glyphicon-chevron-up"></i></button>
                        </a>
                    </div>
                </div>
                <div class="panel-body" id="20001" style="padding-top: 0px;padding-bottom: 0px">
                    <div id="_tools_kemu_show">

                    </div>
                </div>
            </div>
        </div>
    </div>
    </div>
    <div class="modal fade" id="20410" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
        <div class="modal-dialog">
            <div class="modal-content">
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
                    <h4 class="modal-title">
                        添加新学期
                    </h4>
                </div>
                <div class="modal-body">
                    <form class="form-horizontal" id="form_tools_xueqi_add">
                        <div class="form-group">
                            <label class="col-sm-2 control-label">新学期：</label>
                            <div class="col-sm-10">
                                <input id="form_tools_xueqi_add_mingcheng" type="text" placeholder="请输入新学期的名称"
                                       name="xueQiMingCheng" value=""
                                       class="form-control">
                            </div>
                        </div>
                    </form>
                </div>
                <div class="modal-footer">
                    <button type="button" onclick="but_tools_xueqi_add()" class="btn btn-primary">添加</button>
                    <button type="button" class="btn btn-default" data-dismiss="modal">取消</button>
                </div>
            </div>
        </div>
    </div>
    <div class="modal fade" id="20411" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
        <div class="modal-dialog">
            <div class="modal-content">
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
                    <h4 class="modal-title">
                        添加新学校
                    </h4>
                </div>
                <div class="modal-body">
                    <form class="form-horizontal" id="form_tools_xuexiao_add">
                        <div class="form-group">
                            <label class="col-sm-3 control-label">选择学校：</label>
                            <div class="col-sm-9">
                                <select class="form-control" name="xueXiaoMingCheng" id="_tools_modal_xuexiao_show"
                                        data-options="required:true">

                                </select>
                            </div>
                        </div>
                    </form>
                </div>
                <div class="modal-footer">
                    <button type="button" onclick="but_tools_xuexiao_add()" class="btn btn-primary">添加</button>
                    <button type="button" class="btn btn-default" data-dismiss="modal">取消</button>
                </div>
            </div>
        </div>
    </div>
    <div class="modal fade" id="20412" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
        <div class="modal-dialog">
            <div class="modal-content">
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
                    <h4 class="modal-title">
                        添加新教师
                    </h4>
                </div>
                <div class="modal-body">
                    <form class="form-horizontal" id="form_tools_jianshi_add">
                        <div class="form-group">
                            <label class="col-sm-3 control-label">所在学校：</label>
                            <div class="col-sm-9">
                                <select class="form-control" name="学校ID" id="_tools_modal_jiaoshi_show"
                                        data-options="required:true">

                                </select>
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="col-sm-3 control-label">教师姓名：</label>
                            <div class="col-sm-9">
                                <input id="input_JiaoShi" type="text" placeholder="请输入新教师的姓名" name="教师姓名" value=""
                                       class="form-control">
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="col-sm-3 control-label">手机号码：</label>
                            <div class="col-sm-9">
                                <input id="input_shouji" type="number" placeholder="请输入新教师的手机号码" name="手机号码"
                                       value="" class="form-control">
                            </div>
                        </div>
                    </form>
                </div>
                <div class="modal-footer">
                    <button type="button" onclick="but_tools_jiaoshi_add()" class="btn btn-primary">添加</button>
                    <button type="button" class="btn btn-default" data-dismiss="modal">取消</button>
                </div>
            </div>
        </div>
    </div>
    <div class="modal fade" id="20413" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
        <div class="modal-dialog">
            <div class="modal-content">
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
                    <h4 class="modal-title">
                        添加新科目
                    </h4>
                </div>
                <div class="modal-body">
                    <form class="form-horizontal" id="form_tools_kemu_add">
                        <%--<div class="form-group">--%>
                        <%--<label class="col-sm-3 control-label">所在学校：</label>--%>
                        <%--<div class="col-sm-9">--%>
                        <%--<select class="form-control" name="xueXiao" id="input_k_xueXiao" data-options="required:true">--%>
                        <%--<option value="0">清华大学</option>--%>
                        <%--<option value="10">北京大学</option>--%>
                        <%--<option value="20">正在报名</option>--%>
                        <%--</select>--%>
                        <%--</div>--%>
                        <%--</div>--%>
                        <%--<div class="form-group">--%>
                        <%--<label class="col-sm-3 control-label">负责教师：</label>--%>
                        <%--<div class="col-sm-9">--%>
                        <%--<select class="form-control" name="jiaoShi" id="input_k_jiaoShi" data-options="required:true">--%>
                        <%--<option value="0">李老师</option>--%>
                        <%--<option value="10">张老师</option>--%>
                        <%--<option value="20">王老师</option>--%>
                        <%--</select>--%>
                        <%--</div>--%>
                        <%--</div>--%>
                        <div class="form-group">
                            <label class="col-sm-3 control-label">科目名称：</label>
                            <div class="col-sm-9">
                                <input id="input_keMu" type="text" placeholder="请输入新科目的名称" name="mingCheng" value=""
                                       class="form-control">
                            </div>
                        </div>
                    </form>
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-primary" onclick="but_tools_kemu_add()">添加</button>
                    <button type="button" class="btn btn-default" data-dismiss="modal">取消</button>
                </div>
            </div>
        </div>
    </div>
</script>
<script type="text/html" id="tpl_tools_xueqi_show">
    <div class="row clearfix">
        <table class="table  table-hover  table-condensed">
            {{each xueqi}}
            <tr>
                <td>{{$index +
                    1}}
                </td>
                <td>{{$value['xueQiMingCheng']}}</td>
            </tr>
            {{/each}}
        </table>
    </div>
</script>
<script type="text/html" id="tpl_tools_jiaoshi_show">
    <div class="row clearfix">
        <table class="table  table-hover  table-condensed">
            {{each jiaoshi}}
            <tr>
                <td>{{$index +
                    1}}
                </td>
                <td><a href="wtai://wp/mc;{{$value['shouJiHaoMa']}}">{{$value['xingMing']}}</a></td>
                <td>{{$value['shouJiHaoMa']}}</td>

            </tr>
            {{/each}}
        </table>
    </div>
</script>
<script type="text/html" id="tpl_tools_xuexiao_show">
    <div class="row clearfix">
        <table class="table  table-hover  table-condensed">
            {{each xuexiao}}
            <tr>
                <td>{{$index +
                    1}}
                </td>
                <td>{{$value['xueXiaoMingCheng']}}</td>

            </tr>
            {{/each}}
        </table>
    </div>
</script>
<script type="text/html" id="tpl_tools_kemu_show">
    <div class="row clearfix">
        <table class="table  table-hover  table-condensed">
            {{each kemu}}
            <tr>
                <td>{{$index +
                    1}}
                </td>
                <td>{{$value['mingCheng']}}</td>

            </tr>
            {{/each}}
        </table>
    </div>
</script>
<script type="text/html" id="tpl_tools_modal_xuexiao_show">
    {{each xuexiao}}
    <option value="{{$value['学校名称']}},{{$value['学校ID']}}">{{$value['学校名称']}}</option>
    {{/each}}
</script>
<script type="text/html" id="tpl_tools_modal_jiaoshi_show">
    {{each xuexiao}}
    <option value="{{$value['id']}}">{{$value['xueXiaoMingCheng']}}</option>
    {{/each}}
</script>
<script type="text/html" id="tpl_tools_add_xueqi">
    {{each xueqi}}
    <option value="{{$value['id']}}">{{$value['xueQiMingCheng']}}</option>
    {{/each}}
</script>
<script type="text/html" id="tpl_tools_add_xuexiao">
    {{each xuexiao}}
    <option  value="{{$value['id']}}">{{$value['xueXiaoMingCheng']}}</option>
    {{/each}}
</script>
<script type="text/html" id="tpl_tools_add_jiaoshi">
    {{each jiaoshi}}
    <option value="{{$value['id']}}">{{$value['xingMing']}}</option>
    {{/each}}
</script>
<script type="text/html" id="tpl_tools_add_kemu">
    {{each kemu}}
    <option value="{{$value['id']}}">{{$value['mingCheng']}}</option>
    {{/each}}
</script>
<script type="text/javascript" src="${ctx}/widgets/kaowu/_tools.js"></script>
