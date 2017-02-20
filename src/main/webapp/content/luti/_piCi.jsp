<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<script id="tpl_pici" type="text/html">
    <div id="_pici_content">

    </div>
</script>
<script id="tpl_pici_show" type="text/html">
    <div id="_pici_show">
        <div class="row">
            <div class="col-md-12 " style="padding-bottom:10px;">
                <div class="col-sm-1 max_hide">
                    <a class="btn btn-default " onclick="but_pici_add()" href="" id="but_pici_add"
                       data-toggle="modal">
                        <i class="glyphicon glyphicon-plus"></i>
                        添加新批次
                    </a>
                </div>
                <form class="form-horizontal" id="_form_pici_relation_search">

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
                            <th class="table_th max_hide">批次
                            </th>
                            <th class="table_th  max_hide">学校
                            </th>
                            <th class="table_th ">科目
                            </th>
                            <th class="table_th  max_hide">教师
                            </th>
                            <th class="table_th ">状态
                            </th>
                            <th class="table_th ">操作
                            </th>
                        </tr>
                        </thead>
                        <tbody id="_pici_add_show">


                        </tbody>
                    </table>
                </div>
            </div>
        </div>
    </div>
</script>
<script id="tpl_pici_detail" type="text/html">
    <div class="row clearfix">
        <div class="col-md-12 column">
            <div class="panel panel-default">
                <div class="panel-heading">
                    <h3 class="panel-title">
                        查看详细批次
                        <div class="pull-right">
                            <button class="btn btn-sm refresh-panel" onclick="but_pici_edit({{id}})" title="修改"><i
                                    class="glyphicon glyphicon-edit"></i>
                            </button>
                            <button class="btn btn-sm refresh-panel" title="关闭" onclick="form_but_pici_add_back()"><i
                                    class="glyphicon glyphicon-remove"></i>
                            </button>
                        </div>
                    </h3>
                </div>
                <div class="panel-body">
                    <div>
                        <div class="row clearfix">
                            <div class="col-md-12 column">
                                <form id="form_pici_add">
                                    <div class="form-group">
                                        <%--<label for="input0" class="col-sm-2 control-label">ID</label>--%>
                                        <div class="col-sm-10">
                                            <input type="hidden" class="form-control" name="id" readonly="readonly"
                                                   value="" id="id"/>
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
                                                    <input type="text" name="luTiPiHao" class="form-control"
                                                           required="required" id="input1" value="{{luTiPiHao}}"
                                                    />
                                                </div>
                                            </div>
                                            <div class="form-group">
                                                <label class="col-sm-12 control-label"></label>
                                            </div>
                                            <div class="form-group">
                                                <label for="_pici_add_xuexiao"
                                                       class="col-sm-3 control-label">所属学校</label>
                                                <div class="col-sm-9">
                                                    <select class="form-control" name="xueXiao"
                                                            ONCHANGE="but_pici_add_jiaoshi_init(this.value);"
                                                            id="_pici_add_xuexiao"
                                                            data-options="required:true">
                                                        <option >{{xueXiao}}</option>
                                                    </select>
                                                </div>
                                            </div>
                                            <div class="form-group">
                                                <label class="col-sm-12 control-label"></label>
                                            </div>
                                            <div class="form-group">
                                                <label for="_pici_add_kemu" class="col-sm-3 control-label">所属科目</label>
                                                <div class="col-sm-9">
                                                    <select class="form-control" name="keMu" id="_pici_add_kemu"
                                                            data-options="required:true">
                                                        <option >{{keMu}}</option>
                                                    </select>
                                                </div>
                                            </div>
                                            <div class="form-group">
                                                <label class="col-sm-12 control-label"></label>
                                            </div>

                                            <div class="form-group">
                                                <label for="_pici_add_jiaoshi"
                                                       class="col-sm-3 control-label">所属教师</label>
                                                <div class="col-sm-9">
                                                    <select class="form-control" name="fuZeJiaoShi"
                                                            id="_pici_add_jiaoshi"
                                                            data-options="required:true">
                                                        <option >{{fuZeJiaoShi}}</option>
                                                    </select>
                                                </div>
                                            </div>
                                            <div class="form-group">
                                                <label class="col-sm-12 control-label"></label>
                                            </div>
                                            <div class="form-group">
                                                <label for="input6" class="col-sm-3 control-label">所处状态</label>
                                                <div class="col-sm-9">
                                                    <select class="form-control" name="zhuangTai" id="input6"
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
                                                <label for="input8" class="col-sm-3 control-label">开始时间</label>
                                                <div class="col-sm-9">
                                                    <input type="date" class="form-control" id="input8" value="{{kaiShiShiJian}}"
                                                           name="kaiShiShiJian">
                                                </div>
                                            </div>
                                            <div class="form-group">
                                                <label class="col-sm-12 control-label"></label>
                                            </div>
                                            <div class="form-group">
                                                <label for="input9" class="col-sm-3 control-label">截止时间</label>
                                                <div class="col-sm-9">
                                                    <input type="date" class="form-control" id="input9" value="{{jieZhiShiJian}}"
                                                           name="jieZhiShiJian">
                                                </div>
                                            </div>
                                            <div class="form-group">
                                                <label class="col-sm-12 control-label"></label>
                                            </div>
                                            <div class="form-group">
                                                <label for="input5" class="col-sm-3 control-label">录题说明</label>
                                                <div class="col-sm-9">
                                                    <textarea name="luTiShuoMing" class="form-control"
                                                              id="input5">{{luTiShuoMing}}</textarea>
                                                </div>
                                            </div>
                                            <div class="form-group">
                                                <label class="col-sm-12 control-label"></label>
                                            </div>
                                            <div class="form-group">
                                                <label for="input7" class="col-sm-3 control-label">文件数量</label>
                                                <div class="col-sm-9">
                                                    <textarea name="wenJianShuLiang" class="form-control"
                                                              id="input7">{{wenJianShuLiang}}</textarea>
                                                </div>
                                            </div>
                                            <div class="form-group">
                                                <label class="col-sm-12 control-label"></label>
                                            </div>
                                            <div class="form-group">
                                                <label for="input10" class="col-sm-3 control-label">备　 　注</label>
                                                <div class="col-sm-9">
                                                    <textarea name="beiZhu" class="form-control"
                                                              id="input10">{{beiZhu}}</textarea>
                                                </div>
                                            </div>
                                            <%--<div class="form-group">--%>
                                            <%--<label class="col-sm-12 control-label"></label>--%>
                                            <%--</div>--%>
                                            <%--<div class="form-group">--%>
                                            <%--<div class="col-sm-9">--%>
                                            <%--<input type="submit" class="btn btn-primary" value="保存">--%>
                                            <%--<input type="reset" class="btn btn-default"--%>
                                            <%--onclick="but_pici_edit_back()" value="返回">--%>
                                            <%--</div>--%>
                                            <%--</div>--%>
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
<script id="tpl_pici_edit" type="text/html">
    <div class="row clearfix">
        <div class="col-md-12 column">
            <div class="panel panel-default">
                <div class="panel-heading">
                    <h3 class="panel-title">
                        修改批次
                        <div class="pull-right">
                            <button class="btn btn-sm refresh-panel" onclick="but_pici_update()" title="保存"><i
                                    class="glyphicon glyphicon-ok"></i>
                            </button>
                            <button class="btn btn-sm refresh-panel" title="关闭" onclick="form_but_pici_add_back()"><i
                                    class="glyphicon glyphicon-remove"></i>
                            </button>
                        </div>
                    </h3>
                </div>
                <div class="panel-body">
                    <div>
                        <div class="row clearfix">
                            <div class="col-md-12 column">
                                <form id="form_pici_update">
                                    <div class="form-group">
                                        <%--<label for="input0" class="col-sm-2 control-label">ID</label>--%>
                                        <div class="col-sm-10">
                                            <input type="hidden" class="form-control" name="id" readonly="readonly"
                                                   value="{{id}}" id="id"/>
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
                                                    <input type="text" name="luTiPiHao" class="form-control"
                                                           required="required" id="input1" value="{{luTiPiHao}}"
                                                    />
                                                </div>
                                            </div>
                                            <div class="form-group">
                                                <label class="col-sm-12 control-label"></label>
                                            </div>
                                            <div class="form-group">
                                                <label for="_pici_add_xuexiao"
                                                       class="col-sm-3 control-label">所属学校</label>
                                                <div class="col-sm-9">
                                                    <select class="form-control" name="xueXiaoId"
                                                            ONCHANGE="but_pici_add_jiaoshi_init(this.value);"
                                                            id="_pici_add_xuexiao"
                                                            data-options="required:true">

                                                    </select>
                                                </div>
                                            </div>
                                            <div class="form-group">
                                                <label class="col-sm-12 control-label"></label>
                                            </div>
                                            <div class="form-group">
                                                <label for="_pici_add_kemu" class="col-sm-3 control-label">所属科目</label>
                                                <div class="col-sm-9">
                                                    <select class="form-control" name="keMuId" id="_pici_add_kemu"
                                                            data-options="required:true">
                                                        <option >{{keMu}}</option>
                                                    </select>
                                                </div>
                                            </div>
                                            <div class="form-group">
                                                <label class="col-sm-12 control-label"></label>
                                            </div>

                                            <div class="form-group">
                                                <label for="_pici_add_jiaoshi"
                                                       class="col-sm-3 control-label">所属教师</label>
                                                <div class="col-sm-9">
                                                    <select class="form-control" name="jiaoShiId"
                                                            id="_pici_add_jiaoshi"
                                                            data-options="required:true">
                                                        <option >{{fuZeJiaoShi}}</option>
                                                    </select>
                                                </div>
                                            </div>
                                            <div class="form-group">
                                                <label class="col-sm-12 control-label"></label>
                                            </div>
                                            <div class="form-group">
                                                <label for="_pici_add_zhuangtai" class="col-sm-3 control-label">所处状态</label>
                                                <div class="col-sm-9">
                                                    <select class="form-control" name="zhuangTai" id="_pici_add_zhuangtai"
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
                                                <label for="input8" class="col-sm-3 control-label">开始时间</label>
                                                <div class="col-sm-9">
                                                    <input type="date" class="form-control" id="input8" value="{{kaiShiShiJian}}"
                                                           name="kaiShiShiJian">
                                                </div>
                                            </div>
                                            <div class="form-group">
                                                <label class="col-sm-12 control-label"></label>
                                            </div>
                                            <div class="form-group">
                                                <label for="input9" class="col-sm-3 control-label">截止时间</label>
                                                <div class="col-sm-9">
                                                    <input type="date" class="form-control" id="input9" value="{{jieZhiShiJian}}"
                                                           name="jieZhiShiJian">
                                                </div>
                                            </div>
                                            <div class="form-group">
                                                <label class="col-sm-12 control-label"></label>
                                            </div>
                                            <div class="form-group">
                                                <label for="input5" class="col-sm-3 control-label">录题说明</label>
                                                <div class="col-sm-9">
                                                    <textarea name="luTiShuoMing" class="form-control"
                                                              id="input5">{{luTiShuoMing}}</textarea>
                                                </div>
                                            </div>
                                            <div class="form-group">
                                                <label class="col-sm-12 control-label"></label>
                                            </div>
                                            <div class="form-group">
                                                <label for="input7" class="col-sm-3 control-label">文件数量</label>
                                                <div class="col-sm-9">
                                                    <textarea name="wenJianShuLiang" class="form-control"
                                                              id="input7">{{wenJianShuLiang}}</textarea>
                                                </div>
                                            </div>
                                            <div class="form-group">
                                                <label class="col-sm-12 control-label"></label>
                                            </div>
                                            <div class="form-group">
                                                <label for="input10" class="col-sm-3 control-label">备　 　注</label>
                                                <div class="col-sm-9">
                                                    <textarea name="beiZhu" class="form-control"
                                                              id="input10">{{beiZhu}}</textarea>
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
<script id="tpl_pici_add" type="text/html">
    <div class="row clearfix">
        <div class="col-md-12 column">
            <div class="panel panel-default">
                <div class="panel-heading">
                    <h3 class="panel-title">
                        添加批次
                        <div class="pull-right">
                            <button class="btn btn-sm refresh-panel" onclick="form_but_pici_add()" title="添加"><i
                                    class="glyphicon glyphicon-ok"></i>
                            </button>
                            <button class="btn btn-sm refresh-panel" title="关闭" onclick="form_but_pici_add_back()"><i
                                    class="glyphicon glyphicon-remove"></i>
                            </button>
                        </div>
                    </h3>
                </div>
                <div class="panel-body">
                    <div>
                        <div class="row clearfix">
                            <div class="col-md-12 column">
                                <form id="form_pici_add">
                                    <div class="form-group">
                                        <%--<label for="input0" class="col-sm-2 control-label">ID</label>--%>
                                        <div class="col-sm-10">
                                            <input type="hidden" class="form-control" name="id" readonly="readonly"
                                                   value="" id="id"/>
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
                                                    <input type="text" name="luTiPiHao" class="form-control"
                                                           required="required" id="input1"
                                                    />
                                                </div>
                                            </div>
                                            <div class="form-group">
                                                <label class="col-sm-12 control-label"></label>
                                            </div>
                                            <div class="form-group">
                                                <label for="_pici_add_xuexiao"
                                                       class="col-sm-3 control-label">所属学校</label>
                                                <div class="col-sm-9">
                                                    <select class="form-control" name="xueXiao"
                                                            ONCHANGE="but_pici_add_jiaoshi_init(this.value);"
                                                            id="_pici_add_xuexiao"
                                                            data-options="required:true">

                                                    </select>
                                                </div>
                                            </div>
                                            <div class="form-group">
                                                <label class="col-sm-12 control-label"></label>
                                            </div>
                                            <div class="form-group">
                                                <label for="_pici_add_kemu" class="col-sm-3 control-label">所属科目</label>
                                                <div class="col-sm-9">
                                                    <select class="form-control" name="keMu" id="_pici_add_kemu"
                                                            data-options="required:true">

                                                    </select>
                                                </div>
                                            </div>
                                            <div class="form-group">
                                                <label class="col-sm-12 control-label"></label>
                                            </div>

                                            <div class="form-group">
                                                <label for="_pici_add_jiaoshi"
                                                       class="col-sm-3 control-label">所属教师</label>
                                                <div class="col-sm-9">
                                                    <select class="form-control" name="fuZeJiaoShi"
                                                            id="_pici_add_jiaoshi"
                                                            data-options="required:true">
                                                    </select>
                                                </div>
                                            </div>
                                            <div class="form-group">
                                                <label class="col-sm-12 control-label"></label>
                                            </div>
                                            <div class="form-group">
                                                <label for="input6" class="col-sm-3 control-label">所处状态</label>
                                                <div class="col-sm-9">
                                                    <select class="form-control" name="zhuangTai" id="input6"
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
                                                <label for="input8" class="col-sm-3 control-label">开始时间</label>
                                                <div class="col-sm-9">
                                                    <input type="date" class="form-control" id="input8"
                                                           name="kaiShiShiJian">
                                                </div>
                                            </div>
                                            <div class="form-group">
                                                <label class="col-sm-12 control-label"></label>
                                            </div>
                                            <div class="form-group">
                                                <label for="input9" class="col-sm-3 control-label">截止时间</label>
                                                <div class="col-sm-9">
                                                    <input type="date" class="form-control" id="input9"
                                                           name="jieZhiShiJian">
                                                </div>
                                            </div>
                                            <div class="form-group">
                                                <label class="col-sm-12 control-label"></label>
                                            </div>
                                            <div class="form-group">
                                                <label for="input5" class="col-sm-3 control-label">录题说明</label>
                                                <div class="col-sm-9">
                                                    <textarea name="luTiShuoMing" class="form-control"
                                                              id="input5"></textarea>
                                                </div>
                                            </div>
                                            <div class="form-group">
                                                <label class="col-sm-12 control-label"></label>
                                            </div>
                                            <div class="form-group">
                                                <label for="input7" class="col-sm-3 control-label">文件数量</label>
                                                <div class="col-sm-9">
                                                    <textarea name="wenJianShuLiang" class="form-control"
                                                              id="input7"></textarea>
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
                                            <%--<div class="form-group">--%>
                                            <%--<label class="col-sm-12 control-label"></label>--%>
                                            <%--</div>--%>
                                            <%--<div class="form-group">--%>
                                            <%--<div class="col-sm-9">--%>
                                            <%--<input type="submit" class="btn btn-primary" value="保存">--%>
                                            <%--<input type="reset" class="btn btn-default"--%>
                                            <%--onclick="but_pici_edit_back()" value="返回">--%>
                                            <%--</div>--%>
                                            <%--</div>--%>
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
<script type="text/html" id="tpl_pici_add_xueqi">
    {{each xueqi}}
    <option value="{{$value['id']}}">{{$value['xueQiMingCheng']}}</option>
    {{/each}}
</script>
<script type="text/html" id="tpl_pici_add_xuexiao">
    {{each xuexiao}}
    <option value="{{$value['id']}}">{{$value['xueXiaoMingCheng']}}</option>
    {{/each}}
</script>
<script type="text/html" id="tpl_pici_add_jiaoshi">
    {{each jiaoshi}}
    <option value="{{$value['id']}}">{{$value['xingMing']}}</option>
    {{/each}}
</script>
<script type="text/html" id="tpl_pici_add_kemu">
    {{each kemu}}
    <option value="{{$value['id']}}">{{$value['mingCheng']}}</option>
    {{/each}}
</script>
<script type="text/html" id="tpl_pici_add_show">
    {{each pici}}
    <tr>
        <td class="table_th">{{$index + 1}}</td>
        <td class="table_th max_hide">{{$value['luTiPiHao']}}</td>
        <td class="table_th max_hide">{{$value['xueXiao']}}</td>
        <td class="table_th ">{{$value['keMu']}}</td>
        <td class="table_th max_hide ">{{$value['fuZeJiaoShi']}}</td>
        <td class="table_th">
            {{if $value['zhuangTai'] ==0 }}
            <font style='color: #6a6a6a'>未开始</font>
            {{/if}}
            {{if $value['zhuangTai'] ==20 }}
            <font style='color: #00ff00'>正在录入</font>
            {{/if}}
            {{if $value['zhuangTai'] == 70}}
            <font style='color: #000000'>已完成</font>
            {{/if}}
            {{if $value['zhuangTai'] == -100}}
            <font style='color: #6a6a6a'>已删除</font>
            {{/if}}
        </td>
        <td class="table_th">
            <a href="javascript:void(0);but_pici_detail({{$value['id']}});" title="详细"><i
                    class="glyphicon glyphicon-list-alt"></i></a>
            <a href="javascript:void(0);but_pici_edit({{$value['id']}});" title="修改"><i
                    class="glyphicon glyphicon-pencil"></i></a>
            <a href="javascript:void(0);but_pici_delete({{$value['id']}});" title="删除"><i
                    class="glyphicon glyphicon-remove"></i></a>
        </td>
    </tr>
    {{/each}}
</script>
<script type="text/html" id="tpl_form_pici_relation_search">
    <div class="form-group">
        <label class="col-sm-2 control-label max_hide">筛选学校：</label>
        <div class="col-sm-2">
            <select class="form-control" onchange="form_pici_relation_search_onchange()" name="xueXiao" id="input_xueXiao" data-options="required:true">
                <option value="" selected="selected">所有学校</option>
                {{each xuexiao}}
                <option value="{{$value['id']}}">{{$value['xueXiaoMingCheng']}}</option>
                {{/each}}
            </select>
        </div>
        <label class="col-sm-1 control-label max_hide">科目：</label>
        <div class="col-sm-2">
            <select class="form-control" name="keMu" onchange="form_pici_relation_search_onchange()" id="input_kemu" data-options="required:true">
                <option value="" selected="selected">所有科目</option>
                {{each kemu}}
                <option value="{{$value['id']}}">{{$value['mingCheng']}}</option>
                {{/each}}
            </select>
        </div>
        <label class="col-sm-1 control-label max_hide">教师：</label>
        <div class="col-sm-2">
            <select class="form-control" name="fuZeJiaoShi" onchange="form_pici_relation_search_onchange()" id="input_jiaoshi"
                    data-options="required:true">
                <option value="" selected="selected">所有教师</option>
                {{each jiaoshi}}
                <option value="{{$value['id']}}">{{$value['xingMing']}}</option>
                {{/each}}
            </select>
        </div>
    </div>
</script>
<script type="text/javascript" src="${ctx}/widgets/luti/_pici.js"></script>