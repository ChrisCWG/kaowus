<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<script id="tpl_shenhe" type="text/html">
    <div id="_shenhe_content">

    </div>
</script>
<script id="tpl_shenhe_show" type="text/html">
    <div id="">
        <div class="row clearfix">
            <div class="col-md-12" style="padding-bottom:10px;">
                <div class="col-sm-1 max_hide">
                    <a class="btn btn-default " onclick="but_shenhe_add()" href="" id="but_pici_add"
                       data-toggle="modal">
                        <i class="glyphicon glyphicon-plus"></i>
                        分配审核任务
                    </a>
                </div>
                <form class="form-horizontal" id="_shenhe_relation_search">

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
                            <%--<th class="table_th ">录题人--%>
                            <%--</th>--%>
                            <th class="table_th ">审核人
                            </th>
                            <th class="table_th ">进度
                            </th>
                            <th class="table_th ">操作
                            </th>
                        </tr>
                        </thead>
                        <tbody id="_shenhe_table_show">


                        </tbody>
                    </table>
                </div>
            </div>
        </div>
    </div>
</script>
<script id="tpl_shenhe_edit" type="text/html">
    <%--<div id="" class="myHide" >--%>
    <div class="row clearfix">
        <div class="col-md-12 column">
            <div class="panel panel-default">
                <div class="panel-heading">
                    <h3 class="panel-title">
                        修改审核任务
                        <div class="pull-right">
                            <button class="btn btn-sm refresh-panel" onclick="but_shenhe_update()" title="保存"><i
                                    class="glyphicon glyphicon-ok"></i>
                            </button>
                            <button class="btn btn-sm refresh-panel" title="关闭" onclick="but_shenhe_add_close()"><i
                                    class="glyphicon glyphicon-remove"></i>
                            </button>
                        </div>
                    </h3>
                </div>
                <div class="panel-body">
                    <div>
                        <div class="row clearfix">
                            <div class="col-md-12 column">
                                <form id="form_shenhe_edit">
                                    <div class="form-group">
                                        <%--<label for="input0" class="col-sm-2 control-label">ID</label>--%>
                                        <div class="col-sm-10">
                                            <input type="hidden" class="form-control" name="id" readonly="readonly"
                                                   value="" id="_shenhe_detail_shenhe_id"/>
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label class="col-sm-12 control-label"></label>
                                    </div>
                                    <div class="row clearfix">
                                        <div class="col-md-6 column">
                                            <div class="form-group">
                                                <label for="_shenhe_add_pici"
                                                       class="col-sm-3 control-label">录题批次</label>
                                                <div class="col-sm-9">
                                                    <select class="form-control" name="" id="_shenhe_add_pici"
                                                            onchange="_shenhe_add_pici_onchange(this.value)"
                                                            data-options="required:true">
                                                        {{each pici}}
                                                        <option value="{{$value['id']}}">{{$value['luTiPiHao']}}
                                                        </option>
                                                        {{/each }}
                                                    </select>
                                                </div>
                                            </div>
                                            <div class="form-group">
                                                <label class="col-sm-12 control-label"></label>
                                            </div>
                                            <div class="form-group">
                                                <label for="_shenhe_add_lutiren"
                                                       class="col-sm-3 control-label">录题人员</label>
                                                <div class="col-sm-9">
                                                    <select class="form-control" name="luti_id"
                                                            id="_shenhe_add_lutiren"
                                                            data-options="required:true">

                                                    </select>
                                                </div>
                                            </div>
                                            <div class="form-group">
                                                <label class="col-sm-12 control-label"></label>
                                            </div>
                                            <div class="form-group">
                                                <label for="_shenhe_add_shenheren"
                                                       class="col-sm-3 control-label">审核人员</label>
                                                <div class="col-sm-9">
                                                    <select class="form-control" name="user_id"
                                                            id="_shenhe_add_shenheren"
                                                            data-options="required:true">
                                                        {{each shentiren}}
                                                        <option value="{{$value['id']}}">{{$value['userName']}}</option>
                                                        {{/each}}
                                                    </select>
                                                </div>
                                            </div>
                                            <div class="form-group">
                                                <label class="col-sm-12 control-label"></label>
                                            </div>
                                            <div class="form-group">
                                                <label for="_shenhe_add_shenhejindu"
                                                       class="col-sm-3 control-label">进　　度</label>
                                                <div class="col-sm-9">
                                                    <select class="form-control" name="shenHeJinDu"
                                                            id="_shenhe_add_shenhejindu"
                                                            data-options="required:true">
                                                        <option value="0">未开始</option>
                                                        <option value="20">正在审核</option>
                                                        <option value="70">已完成</option>
                                                        <option value="-100">已删除</option>
                                                    </select>
                                                </div>
                                            </div>
                                            <div class="form-group">
                                                <label class="col-sm-12 control-label"></label>
                                            </div>
                                            <div class="form-group">
                                                <label for="_shenhe_add_xiugajilu" class="col-sm-3 control-label">修改记录</label>
                                                <div class="col-sm-9">
                                                    <textarea name="xiuGaiJiLu" class="form-control"
                                                              id="_shenhe_add_xiugajilu"></textarea>
                                                </div>
                                            </div>
                                            <div class="form-group">
                                                <label class="col-sm-12 control-label"></label>
                                            </div>
                                            <div class="form-group">
                                                <label for="_shenhe_add_xiugaishuliag" class="col-sm-3 control-label">修改数量</label>
                                                <div class="col-sm-9">
                                                    <textarea name="xiuGaiShuLiang" class="form-control"
                                                              id="_shenhe_add_xiugaishuliag"></textarea>
                                                </div>
                                            </div>
                                            <div class="form-group">
                                                <label class="col-sm-12 control-label"></label>
                                            </div>
                                            <div class="form-group">
                                                <label for="_shenhe_add_beizhu" class="col-sm-3 control-label">备　 　注</label>
                                                <div class="col-sm-9">
                                                    <textarea name="beiZhu" class="form-control"
                                                              id="_shenhe_add_beizhu"></textarea>
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
        <%--</div>--%>
    </div>
</script>
<script id="tpl_shenhe_detail" type="text/html">
    <%--<div id="" class="myHide" >--%>
    <div class="row clearfix">
        <div class="col-md-12 column">
            <div class="panel panel-default">
                <div class="panel-heading">
                    <h3 class="panel-title">
                        查看审核任务
                        <div class="pull-right">
                            <button class="btn btn-sm refresh-panel" id="_shenhe_detail_shenhe_id" onclick="but_shenhe_edit(this.value)" value="
                " title="修改"><i
                                    class="glyphicon glyphicon-edit"></i>
                            </button>
                            <button class="btn btn-sm refresh-panel" title="关闭" onclick="but_shenhe_add_close()"><i
                                    class="glyphicon glyphicon-remove"></i>
                            </button>
                        </div>
                    </h3>
                </div>
                <div class="panel-body">
                    <div>
                        <div class="row clearfix">
                            <div class="col-md-12 column">
                                <form id="form_shenhe_detail">
                                    <div class="form-group">
                                        <%--<label for="input0" class="col-sm-2 control-label">ID</label>--%>
                                        <div class="col-sm-10">
                                            <input type="hidden" class="form-control" name="id" readonly="readonly"
                                                   value="" id="_shenhe_detail_pici_id"/>
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label class="col-sm-12 control-label"></label>
                                    </div>
                                    <div class="row clearfix">
                                        <div class="col-md-6 column">
                                            <div class="form-group">
                                                <label for="_shenhe_add_pici"
                                                       class="col-sm-3 control-label">录题批次</label>
                                                <div class="col-sm-9">
                                                    <input type="text" class="form-control" value="{{luTiPiHao}}" id="_shenhe_add_pici">
                                                </div>
                                            </div>
                                            <div class="form-group">
                                                <label class="col-sm-12 control-label"></label>
                                            </div>
                                            <div class="form-group">
                                                <label for="_shenhe_add_lutiren"
                                                       class="col-sm-3 control-label">录题人员</label>
                                                <div class="col-sm-9">
                                                    <select class="form-control" name="fuZeJaoShi"
                                                            id="_shenhe_add_lutiren"
                                                            data-options="required:true">

                                                    </select>
                                                </div>
                                            </div>
                                            <div class="form-group">
                                                <label class="col-sm-12 control-label"></label>
                                            </div>
                                            <div class="form-group">
                                                <label for="_shenhe_add_shenheren"
                                                       class="col-sm-3 control-label">审核人员</label>
                                                <div class="col-sm-9">
                                                    <input type="text" class="form-control" value="{{shenHeRen}}" id="_shenhe_add_shenheren">
                                                    <%--<select class="form-control" name="user_id"--%>
                                                            <%--id="_shenhe_add_shenheren"--%>
                                                            <%--data-options="required:true">--%>
                                                        <%--{{each shentiren}}--%>
                                                        <%--<option value="{{$value['id']}}">{{$value['userName']}}</option>--%>
                                                        <%--{{/each}}--%>
                                                    <%--</select>--%>
                                                </div>
                                            </div>
                                            <div class="form-group">
                                                <label class="col-sm-12 control-label"></label>
                                            </div>
                                            <div class="form-group">
                                                <label for="_shenhe_add_shenhejindu"
                                                       class="col-sm-3 control-label">进　　度</label>
                                                <div class="col-sm-9">
                                                    <select class="form-control" name="shenHeJinDu"
                                                            id="_shenhe_add_shenhejindu"
                                                            data-options="required:true">
                                                        <option value="0">未开始</option>
                                                        <option value="20">正在审核</option>
                                                        <option value="70">已完成</option>
                                                        <option value="-100">已删除</option>
                                                    </select>
                                                </div>
                                            </div>
                                            <div class="form-group">
                                                <label class="col-sm-12 control-label"></label>
                                            </div>
                                            <div class="form-group">
                                                <label for="_shenhe_add_xiugajilu" class="col-sm-3 control-label">修改记录</label>
                                                <div class="col-sm-9">
                                                    <textarea name="xiuGaiJiLu" class="form-control"
                                                              id="_shenhe_add_xiugajilu">{{xiuGaiJiLu}}</textarea>
                                                </div>
                                            </div>
                                            <div class="form-group">
                                                <label class="col-sm-12 control-label"></label>
                                            </div>
                                            <div class="form-group">
                                                <label for="_shenhe_add_xiugaishuliag" class="col-sm-3 control-label">修改数量</label>
                                                <div class="col-sm-9">
                                                    <textarea name="xiuGaiShuLiang" class="form-control"
                                                              id="_shenhe_add_xiugaishuliag">{{xiuGaiShuLiang}}</textarea>
                                                </div>
                                            </div>
                                            <div class="form-group">
                                                <label class="col-sm-12 control-label"></label>
                                            </div>
                                            <div class="form-group">
                                                <label for="_shenhe_add_beizhu" class="col-sm-3 control-label">备　 　注</label>
                                                <div class="col-sm-9">
                                                    <textarea name="beiZhu" class="form-control"
                                                              id="_shenhe_add_beizhu">{{beiZhu}}</textarea>
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
        <%--</div>--%>
    </div>
</script>
<script id="tpl_shenhe_add" type="text/html">
    <%--<div id="" class="myHide" >--%>
    <div class="row clearfix">
        <div class="col-md-12 column">
            <div class="panel panel-default">
                <div class="panel-heading">
                    <h3 class="panel-title">
                        添加审核任务
                        <div class="pull-right">
                            <button class="btn btn-sm refresh-panel" onclick="but_shenhe_add_save()" title="保存"><i
                                    class="glyphicon glyphicon-ok"></i>
                            </button>
                            <button class="btn btn-sm refresh-panel" title="关闭" onclick="but_shenhe_add_close()"><i
                                    class="glyphicon glyphicon-remove"></i>
                            </button>
                        </div>
                    </h3>
                </div>
                <div class="panel-body">
                    <div>
                        <div class="row clearfix">
                            <div class="col-md-12 column">
                                <form id="form_shenhe_add">
                                    <div class="form-group">
                                        <%--<label for="input0" class="col-sm-2 control-label">ID</label>--%>
                                        <div class="col-sm-10">
                                            <input type="hidden" class="form-control" name="id" readonly="readonly"
                                                   value="" id="input0"/>
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label class="col-sm-12 control-label"></label>
                                    </div>
                                    <div class="row clearfix">
                                        <div class="col-md-6 column">
                                            <div class="form-group">
                                                <label for="_shenhe_add_pici"
                                                       class="col-sm-3 control-label">录题批次</label>
                                                <div class="col-sm-9">
                                                    <select class="form-control" name="" id="_shenhe_add_pici"
                                                            onchange="_shenhe_add_pici_onchange(this.value)"
                                                            data-options="required:true">
                                                        {{each pici}}
                                                        <option value="{{$value['id']}}">{{$value['luTiPiHao']}}
                                                        </option>
                                                        {{/each }}
                                                    </select>
                                                </div>
                                            </div>
                                            <div class="form-group">
                                                <label class="col-sm-12 control-label"></label>
                                            </div>
                                            <div class="form-group">
                                                <label for="_shenhe_add_lutiren"
                                                       class="col-sm-3 control-label">录题人员</label>
                                                <div class="col-sm-9">
                                                    <select class="form-control" name="luti_id"
                                                            id="_shenhe_add_lutiren"
                                                            data-options="required:true">

                                                    </select>
                                                </div>
                                            </div>
                                            <div class="form-group">
                                                <label class="col-sm-12 control-label"></label>
                                            </div>
                                            <div class="form-group">
                                                <label for="_shenhe_add_shenheren"
                                                       class="col-sm-3 control-label">审核人员</label>
                                                <div class="col-sm-9">
                                                    <select class="form-control" name="user_id"
                                                            id="_shenhe_add_shenheren"
                                                            data-options="required:true">
                                                        {{each shentiren}}
                                                        <option value="{{$value['id']}}">{{$value['userName']}}</option>
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
                                                    <select class="form-control" name="shenHeJinDu" id="input6"
                                                            data-options="required:true">
                                                        <option value="0">未开始</option>
                                                        <option value="20">正在审核</option>
                                                        <option value="70">已完成</option>
                                                        <option value="-100">已删除</option>
                                                    </select>
                                                </div>
                                            </div>
                                            <div class="form-group">
                                                <label class="col-sm-12 control-label"></label>
                                            </div>
                                            <div class="form-group">
                                                <label for="input11" class="col-sm-3 control-label">修改记录</label>
                                                <div class="col-sm-9">
                                                    <textarea name="xiuGaiJiLu" class="form-control"
                                                              id="input11"></textarea>
                                                </div>
                                            </div>
                                            <div class="form-group">
                                                <label class="col-sm-12 control-label"></label>
                                            </div>
                                            <div class="form-group">
                                                <label for="input12" class="col-sm-3 control-label">修改数量</label>
                                                <div class="col-sm-9">
                                                    <textarea name="xiuGaiShuLiang" class="form-control"
                                                              id="input12"></textarea>
                                                </div>
                                            </div>
                                            <div class="form-group">
                                                <label class="col-sm-12 control-label"></label>
                                            </div>
                                            <div class="form-group">
                                                <label for="input10" class="col-sm-3 control-label">备　 　注</label>
                                                <div class="col-sm-9">
                                                    <textarea name="beiZhu" class="form-control"
                                                              id="input10"></textarea>
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
        <%--</div>--%>
    </div>
</script>
<script id="tpl_shenhe_relation_search" type="text/html">
    <div class="form-group">
        <label class="col-sm-2 control-label max_hide">筛选批次：</label>
        <div class="col-sm-2">
            <select class="form-control" onchange="_shenhe_relation_search_onchange()" name="pici_id" id="input_piCi"
                    data-options="required:true">
                <option value="" selected="selected">所有批次</option>
                {{each pici}}
                <option value="{{$value['id']}}">{{$value['luTiPiHao']}}</option>
                {{/each}}
            </select>
        </div>
        <label class="col-sm-1 control-label max_hide">审题人：</label>
        <div class="col-sm-2">
            <select class="form-control" onchange="_shenhe_relation_search_onchange()" name="user_id" id="input_jiaoshi"
                    data-options="required:true">
                <option value="" selected="selected">所有审题人</option>
                {{each user}}
                <option value="{{$value['id']}}">{{$value['userName']}}</option>
                {{/each}}
            </select>
        </div>
    </div>
</script>
<script id="tpl_shenhe_table_show" type="text/html">
    {{each shenhe}}
    <tr>
        <td class="table_th">{{$index + 1}}</td>
        <td class="table_th">{{$value['luTiPiHao']}}</td>
        <%--<td class="table_th ">{{$value['luTiRen_ID']}}</td>--%>
        <td class="table_th">{{$value['shenHeRen']}}</td>
        <td class="table_th">
            {{if $value['shenHeJinDu'] ==0 }}
            <font style='color: #6a6a6a'>未开始</font>
            {{/if}}
            {{if $value['shenHeJinDu'] ==20 }}
            <font style='color: #00ff00'>正在审核</font>
            {{/if}}
            {{if $value['shenHeJinDu'] == 70}}
            <font style='color: #000000'>已完成</font>
            {{/if}}
            {{if $value['shenHeJinDu'] == -100}}
            <font style='color: #6a6a6a'>已删除</font>
            {{/if}}
        </td>
        <td class="table_th">
            <a href="javascript:void(0);but_shenhe_detail({{$value['id']}});" title="详细"><i
                    class="glyphicon glyphicon-list-alt"></i></a>
            <a href="javascript:void(0);but_shenhe_edit({{$value['id']}});" title="修改"><i
                    class="glyphicon glyphicon-pencil"></i></a>
            <a href="javascript:void(0);but_shenhe_delete({{$value['id']}});" title="删除"><i
                    class="glyphicon glyphicon-remove"></i></a>
        </td>
    </tr>
    {{/each}}
</script>
<script type="text/html" id="tpl_shenhe_add_lutiren">
    {{each lutiren}}
    <option value="{{$value['id']}}">{{$value['luTiRen']}}</option>
    {{/each}}
</script>
<script type="text/html" id="tpl_shenhe_lutiren">
    {{each lutiren}}
    <option value="{{$value['id']}}">{{$value['userName']}}</option>
    {{/each}}
</script>
<script type="text/javascript" src="${ctx}/widgets/luti/_shenhe.js"></script>