<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<script id="tpl_luru" type="text/html">
    <div id="_luru_content">

    </div>
</script>
<script id="tpl_luru_show" type="text/html">
    <div id="_luru_show">
        <div class="row">
            <div class="col-md-12 " style="padding-bottom:10px;">
                <div class="col-sm-1 max_hide">
                    <a class="btn btn-default " onclick="but_luru_add()" href="" id="but_pici_add"
                       data-toggle="modal">
                        <i class="glyphicon glyphicon-plus"></i>
                        分配录题任务
                    </a>
                </div>
                <form class="form-horizontal" id="_luru_relation_search">

                </form>
            </div>
        </div>
        <div class="row">
            <div class="col-md-12 ">
                <div class="panel panel-default">
                    <div class="panel-heading">
                        列表
                    </div>
                    <table class="table  table-hover  table-condensed">
                        <thead>
                        <tr>
                            <th class="table_th col-sm-1">
                            </th>
                            <th class="table_th ">批次
                            </th>
                            <th class="table_th ">录题人
                            </th>
                            <th class="table_th max_hide">文件名
                            </th>
                            <th class="table_th max_hide">题目数量
                            </th>
                            <th class="table_th ">进度
                            </th>
                            <th class="table_th ">操作
                            </th>
                        </tr>
                        </thead>
                        <tbody id="_luru_table_show">

                        </tbody>
                    </table>
                </div>
            </div>
        </div>
    </div>
</script>
<script id="tpl_luru_add" type="text/html">
    <div>
        <div class="row clearfix">
            <div class="col-md-12 column">
                <div class="panel panel-default">
                    <div class="panel-heading">
                        <h3 class="panel-title">
                            分配录题任务
                            <div class="pull-right">
                                <button class="btn btn-sm refresh-panel" onclick="but_luru_add_save()" title="保存"><i
                                        class="glyphicon glyphicon-ok"></i>
                                </button>
                                <button class="btn btn-sm refresh-panel" title="关闭" onclick="but_luru_add_close()"><i
                                        class="glyphicon glyphicon-remove"></i>
                                </button>
                            </div>
                        </h3>

                    </div>
                    <div class="panel-body">
                        <div>
                            <div class="row clearfix">
                                <div class="col-md-12 column">
                                    <form id="form_luru_add">
                                        <div class="form-group">
                                            <%--<label for="input0" class="col-sm-2 control-label">ID</label>--%>
                                            <div class="col-sm-10">
                                                <input type="hidden" class="form-control" name="id" readonly="readonly"
                                                       value="{{id}}" id="input0"/>
                                            </div>
                                        </div>
                                        <div class="form-group">
                                            <label class="col-sm-12 control-label"></label>
                                        </div>
                                        <div class="row clearfix">
                                            <div class="col-md-6 column">
                                                <div class="form-group">
                                                    <label for="input1" class="col-sm-3 control-label">录题批号</label>
                                                    <div class="col-sm-9">
                                                        <select class="form-control" name="pici_id" id="input1"
                                                                data-options="required:true">
                                                            {{each pici}}
                                                            <option value="{{$value['id']}}">{{$value['luTiPiHao']}}
                                                            </option>
                                                            {{/each}}
                                                        </select>
                                                    </div>
                                                </div>
                                                <div class="form-group">
                                                    <label class="col-sm-12 control-label"></label>
                                                </div>
                                                <div class="form-group">
                                                    <label for="input4" class="col-sm-3 control-label">录题人员</label>
                                                    <div class="col-sm-9">
                                                        <select class="form-control" name="user_id" id="input4"
                                                                data-options="required:true">
                                                            {{each user}}
                                                            <option value="{{$value['id']}}">{{$value['userName']}}
                                                            </option>
                                                            {{/each}}
                                                        </select>
                                                    </div>
                                                </div>
                                                <div class="form-group">
                                                    <label class="col-sm-12 control-label"></label>
                                                </div>
                                                <div class="form-group">
                                                    <label for="input6" class="col-sm-3 control-label">进　　度</label>
                                                    <div class="col-sm-9">
                                                        <select class="form-control" name="jinDu" id="input6"
                                                                data-options="required:true">
                                                            <option value="0">未开始</option>
                                                            <option value="20">正在录入</option>
                                                            <option value="70">已完成</option>
                                                            <option value="-100">已删除</option>
                                                        </select>
                                                    </div>
                                                </div>
                                                <div class="form-group">
                                                    <label class="col-sm-12 control-label"></label>
                                                </div>
                                                <div class="form-group">
                                                    <label for="input5" class="col-sm-3 control-label">录题文件</label>
                                                    <div class="col-sm-9">
                                                    <textarea name="wenJianMing" class="form-control"
                                                              id="input5"></textarea>
                                                    </div>
                                                </div>
                                                <div class="form-group">
                                                    <label class="col-sm-12 control-label"></label>
                                                </div>
                                                <div class="form-group">
                                                    <label for="input7" class="col-sm-3 control-label">题目数量</label>
                                                    <div class="col-sm-9">
                                                        <textarea name="tiMuShuLiang" class="form-control" id="input7">{{sHIJIAN}}</textarea>
                                                    </div>
                                                </div>
                                                <div class="form-group">
                                                    <label class="col-sm-12 control-label"></label>
                                                </div>
                                                <div class="form-group">
                                                    <label for="input10" class="col-sm-3 control-label">备　 　注</label>
                                                    <div class="col-sm-9">
                                                        <textarea name="beiZhu" class="form-control" id="input10">{{kAOCHANG}}</textarea>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </form>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</script>
<script id="tpl_luru_detail" type="text/html">
    <div class="row clearfix">
        <div class="col-md-12 column">
            <div class="panel panel-default">
                <div class="panel-heading">
                    <h3 class="panel-title">
                        查看录题任务
                        <div class="pull-right">
                            <button class="btn btn-sm refresh-panel" onclick="but_luru_edit({{id}})" title="编辑"><i
                                    class="glyphicon glyphicon-edit"></i>
                            </button>
                            <button class="btn btn-sm refresh-panel" title="关闭" onclick="but_luru_add_close()"><i
                                    class="glyphicon glyphicon-remove"></i>
                            </button>
                        </div>
                    </h3>

                </div>
                <div class="panel-body">
                    <div>
                        <div class="row clearfix">
                            <div class="col-md-12 column">
                                <form id="form_luru_detail">
                                    <div class="form-group">
                                        <%--<label for="input0" class="col-sm-2 control-label">ID</label>--%>
                                        <div class="col-sm-10">
                                            <input type="hidden" class="form-control" name="id" readonly="readonly"
                                                   value="{{id}}" id="input0"/>
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label class="col-sm-12 control-label"></label>
                                    </div>
                                    <div class="row clearfix">
                                        <div class="col-md-6 column">
                                            <div class="form-group">
                                                <label for="input1" class="col-sm-3 control-label">录题批号</label>
                                                <div class="col-sm-9">
                                                    <select class="form-control" name="pici_id" id="input1"
                                                            data-options="required:true">
                                                        <option value="">{{luTiPiHao}}</option>
                                                    </select>
                                                </div>
                                            </div>
                                            <div class="form-group">
                                                <label class="col-sm-12 control-label"></label>
                                            </div>
                                            <div class="form-group">
                                                <label for="xueXiaoMingCheng" class="col-sm-3 control-label">所属学校</label>
                                                <div class="col-sm-9">
                                                    <select class="form-control" name="xueXiaoMingCheng" id="xueXiaoMingCheng"
                                                            data-options="required:true">
                                                        <option value="">{{xueXiaoMingCheng}}</option>
                                                    </select>
                                                </div>
                                            </div>
                                            <div class="form-group">
                                                <label class="col-sm-12 control-label"></label>
                                            </div>
                                            <div class="form-group">
                                                <label for="input4" class="col-sm-3 control-label">录题人员</label>
                                                <div class="col-sm-9">
                                                    <select class="form-control" name="user_id" id="input4"
                                                            data-options="required:true">
                                                        <option value="">{{luTiRen}}</option>
                                                    </select>
                                                </div>
                                            </div>
                                            <div class="form-group">
                                                <label class="col-sm-12 control-label"></label>
                                            </div>
                                            <div class="form-group">
                                                <label for="jieZhiShiJian" class="col-sm-3 control-label">截止时间</label>
                                                <div class="col-sm-9">
                                                    <input type="date" class="form-control" value="{{jieZhiShiJian}}" name="jieZhiShiJian" id="jieZhiShiJian">
                                                </div>
                                            </div>
                                            <div class="form-group">
                                                <label class="col-sm-12 control-label"></label>
                                            </div>
                                            <div class="form-group">
                                                <label for="input6" class="col-sm-3 control-label">进　　度</label>
                                                <div class="col-sm-9">
                                                    <select class="form-control" name="jinDu" id="jinDu"
                                                            data-options="required:true">
                                                        <option value="0">未开始</option>
                                                        <option value="20">正在录入</option>
                                                        <option value="70">已完成</option>
                                                        <option value="-100">已删除</option>
                                                    </select>
                                                </div>
                                            </div>
                                            <div class="form-group">
                                                <label class="col-sm-12 control-label"></label>
                                            </div>
                                            <div class="form-group">
                                                <label for="input5" class="col-sm-3 control-label">录题文件</label>
                                                <div class="col-sm-9">
                                                    <textarea name="wenJianMing" class="form-control"
                                                              id="input5">{{wenJianMing}}</textarea>
                                                </div>
                                            </div>
                                            <div class="form-group">
                                                <label class="col-sm-12 control-label"></label>
                                            </div>
                                            <div class="form-group">
                                                <label for="input7" class="col-sm-3 control-label">题目数量</label>
                                                <div class="col-sm-9">
                                                    <textarea name="tiMuShuLiang" class="form-control" id="input7">{{tiMuShuLiang}}</textarea>
                                                </div>
                                            </div>
                                            <div class="form-group">
                                                <label class="col-sm-12 control-label"></label>
                                            </div>
                                            <div class="form-group">
                                                <label for="input10" class="col-sm-3 control-label">备　 　注</label>
                                                <div class="col-sm-9">
                                                    <textarea name="beiZhu" class="form-control" id="input10">{{beiZhu}}</textarea>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </form>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</script>
<script id="tpl_luru_edit" type="text/html">
    <div class="row clearfix">
        <div class="col-md-12 column">
            <div class="panel panel-default">
                <div class="panel-heading">
                    <h3 class="panel-title">
                        修改录题任务
                        <div class="pull-right">
                            <button class="btn btn-sm refresh-panel" onclick="but_luru_update()" title="保存"><i
                                    class="glyphicon glyphicon-ok"></i>
                            </button>
                            <button class="btn btn-sm refresh-panel" title="关闭" onclick="but_luru_add_close()"><i
                                    class="glyphicon glyphicon-remove"></i>
                            </button>
                        </div>
                    </h3>

                </div>
                <div class="panel-body">
                    <div>
                        <div class="row clearfix">
                            <div class="col-md-12 column">
                                <form id="form_luru_edit">
                                    <div class="form-group">
                                        <%--<label for="input0" class="col-sm-2 control-label">ID</label>--%>
                                        <div class="col-sm-10">
                                            <input type="hidden" class="form-control" name="id" readonly="readonly"
                                                   value="{{id}}" id="input0"/>
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label class="col-sm-12 control-label"></label>
                                    </div>
                                    <div class="row clearfix">
                                        <div class="col-md-6 column">
                                            <div class="form-group">
                                                <label for="input1" class="col-sm-3 control-label">录题批号</label>
                                                <div class="col-sm-9">
                                                    <select class="form-control" name="pici_id" id="input1"
                                                            data-options="required:true">
                                                        <option value="{{pici_id}}">{{luTiPiHao}}</option>
                                                    </select>
                                                </div>
                                            </div>
                                            <div class="form-group">
                                                <label class="col-sm-12 control-label"></label>
                                            </div>
                                            <div class="form-group">
                                                <label for="xueXiaoMingCheng" class="col-sm-3 control-label">所属学校</label>
                                                <div class="col-sm-9">
                                                    <select class="form-control" name="xueXiaoMingCheng" id="xueXiaoMingCheng"
                                                            data-options="required:true">
                                                        <option value="">{{xueXiaoMingCheng}}</option>
                                                    </select>
                                                </div>
                                            </div>
                                            <div class="form-group">
                                                <label class="col-sm-12 control-label"></label>
                                            </div>
                                            <div class="form-group">
                                                <label for="input4" class="col-sm-3 control-label">录题人员</label>
                                                <div class="col-sm-9">
                                                    <select class="form-control" name="user_id" id="input4"
                                                            data-options="required:true">
                                                        <option value="{{user_id}}">{{luTiRen}}</option>
                                                    </select>
                                                </div>
                                            </div>
                                            <div class="form-group">
                                                <label class="col-sm-12 control-label"></label>
                                            </div>
                                            <div class="form-group">
                                                <label for="jieZhiShiJian" class="col-sm-3 control-label">截止时间</label>
                                                <div class="col-sm-9">
                                                    <input type="date" class="form-control" value="{{jieZhiShiJian}}" name="jieZhiShiJian" id="jieZhiShiJian">
                                                </div>
                                            </div>
                                            <div class="form-group">
                                                <label class="col-sm-12 control-label"></label>
                                            </div>
                                            <div class="form-group">
                                                <label for="input6" class="col-sm-3 control-label">进　　度</label>
                                                <div class="col-sm-9">
                                                    <select class="form-control" name="jinDu" id="jinDu"
                                                            data-options="required:true">
                                                        <option value="0">未开始</option>
                                                        <option value="20">正在录入</option>
                                                        <option value="70">已完成</option>
                                                        <option value="-100">已删除</option>
                                                    </select>
                                                </div>
                                            </div>
                                            <div class="form-group">
                                                <label class="col-sm-12 control-label"></label>
                                            </div>
                                            <div class="form-group">
                                                <label for="input5" class="col-sm-3 control-label">录题文件</label>
                                                <div class="col-sm-9">
                                                    <textarea name="wenJianMing" class="form-control"
                                                              id="input5">{{wenJianMing}}</textarea>
                                                </div>
                                            </div>
                                            <div class="form-group">
                                                <label class="col-sm-12 control-label"></label>
                                            </div>
                                            <div class="form-group">
                                                <label for="input7" class="col-sm-3 control-label">题目数量</label>
                                                <div class="col-sm-9">
                                                    <textarea name="tiMuShuLiang" class="form-control" id="input7">{{tiMuShuLiang}}</textarea>
                                                </div>
                                            </div>
                                            <div class="form-group">
                                                <label class="col-sm-12 control-label"></label>
                                            </div>
                                            <div class="form-group">
                                                <label for="input10" class="col-sm-3 control-label">备　 　注</label>
                                                <div class="col-sm-9">
                                                    <textarea name="beiZhu" class="form-control" id="input10">{{beiZhu}}</textarea>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </form>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</script>
<script id="tpl_luru_relation_search" type="text/html">
    <div class="form-group">
        <label class="col-sm-2 control-label max_hide">筛选批次：</label>
        <div class="col-sm-2">
            <select class="form-control" onchange="_luru_relation_search_onchange()" name="pici_id" id="input_piCi"
                    data-options="required:true">
                <option value="" selected="selected">所有批次</option>
                {{each pici}}
                <option value="{{$value['id']}}">{{$value['luTiPiHao']}}</option>
                {{/each}}
            </select>
        </div>
        <label class="col-sm-1 control-label max_hide">录题人：</label>
        <div class="col-sm-2">
            <select class="form-control" onchange="_luru_relation_search_onchange()" name="user_id" id="input_jiaoshi"
                    data-options="required:true">
                <option value="" selected="selected">所有录题人</option>
                {{each user}}
                <option value="{{$value['id']}}">{{$value['userName']}}</option>
                {{/each}}
            </select>
        </div>
    </div>
</script>
<script id="tpl_luru_table_show" type="text/html">
    {{each luti}}
    <tr>
        <td class="table_th">{{$index + 1}}</td>
        <td class="table_th">{{$value['luTiPiHao']}}</td>
        <td class="table_th ">{{$value['luTiRen']}}</td>
        <td class="table_th max_hide">{{$value['wenJianMing']}}</td>
        <td class="table_th max_hide ">{{$value['tiMuShuLiang']}}</td>
        <td class="table_th">
            {{if $value['jinDu'] ==0 }}
            <font style='color: #6a6a6a'>未开始</font>
            {{/if}}
            {{if $value['jinDu'] ==20 }}
            <font style='color: #00ff00'>正在录入</font>
            {{/if}}
            {{if $value['jinDu'] == 70}}
            <font style='color: #000000'>已完成</font>
            {{/if}}
            {{if $value['jinDu'] == -100}}
            <font style='color: #6a6a6a'>已删除</font>
            {{/if}}
        </td>
        <td class="table_th">
            <a href="javascript:void(0);but_luru_detail({{$value['id']}});" title="详细"><i
                    class="glyphicon glyphicon-list-alt"></i></a>
            <a href="javascript:void(0);but_luru_edit({{$value['id']}});" title="修改"><i
                    class="glyphicon glyphicon-pencil"></i></a>
            <a href="javascript:void(0);but_luru_delete({{$value['id']}});" title="删除"><i
                    class="glyphicon glyphicon-remove"></i></a>
        </td>
    </tr>
    {{/each}}
</script>
<script type="text/javascript" src="${ctx}/widgets/luti/_luru.js"></script>
