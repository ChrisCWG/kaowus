<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<script type="text/html" id="tpl_kaowu">
    <div id="_kaowu_content">

    </div>
</script>
<script id="tpl_kaowu_detail" type="text/html">
    <div class="panel panel-default">
        <div class="panel-heading">
            详细考务信息
            <div class="pull-right">
                <button class="btn btn-sm refresh-panel" onclick="but_kaowu_edit({{id}})" title="编辑"><i class="glyphicon glyphicon-edit"></i>
                </button>
                <button class="btn btn-sm refresh-panel" onclick="but_kaowu_detail({{id}})" title="刷新"><i class="glyphicon glyphicon-refresh"></i>
                </button>
                <button class="btn btn-sm refresh-panel" title="关闭" onclick="but_kaowu_edit_back()"><i
                        class="glyphicon glyphicon-remove"></i>
                </button>
            </div>
        </div>
        <div class="panel-body">
            <div class="row clearfix">
                <form id="form_kaowu_detail">
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
                                    <label for="xueQi" class="col-sm-2 control-label">学　期</label>
                                    <div class="col-sm-10">
                                        <select class="form-control" name="xueQi" id="xueQi"
                                                data-options="required:true">
                                            <option value="0">{{xueQi}}</option>
                                        </select>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label class="col-sm-12 control-label"></label>
                                </div>
                                <div class="form-group">
                                    <label for="xueXiao" class="col-sm-2 control-label">学　校</label>
                                    <div class="col-sm-10">
                                        <select class="form-control" name="xueXiao" id="xueXiao"
                                                data-options="required:true">
                                            <option value="0">{{xueXiao}}</option>
                                        </select>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label class="col-sm-12 control-label"></label>
                                </div>
                                <div class="form-group">
                                    <label for="fuZeJiaoShi" class="col-sm-2 control-label">教　师</label>
                                    <div class="col-sm-10">
                                        <select class="form-control" name="fuZeJaoShi" id="fuZeJiaoShi"
                                                data-options="required:true">
                                            <option value="0">{{fuZeJiaoShi}}</option>
                                        </select>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label class="col-sm-12 control-label"></label>
                                </div>
                                <div class="form-group">
                                    <label for="keMu" class="col-sm-2 control-label">科　目</label>
                                    <div class="col-sm-10">
                                        <select class="form-control" name="keMu" id="keMu"
                                                data-options="required:true">
                                            <option value="0">{{keMu}}</option>
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
<script id="tpl_kaowu_edit" type="text/html">
    <div class="panel panel-default">
        <div class="panel-heading">
            修改考务信息
            <div class="pull-right">
                <button class="btn btn-sm refresh-panel" onclick="but_kaowu_update({{id}})" title="保存"><i class="glyphicon glyphicon-ok"></i>
                </button>
                <button class="btn btn-sm refresh-panel" onclick="but_kaowu_edit({{id}})" title="刷新"><i class="glyphicon glyphicon-refresh"></i>
                </button>
                <button class="btn btn-sm refresh-panel" title="关闭" onclick="but_kaowu_edit_back()"><i
                        class="glyphicon glyphicon-remove"></i>
                </button>
            </div>
        </div>
        <div class="panel-body">
            <div class="row clearfix">
                <form id="form_kaowu_edit">
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
                                    <label for="xueQi" class="col-sm-2 control-label">学　期</label>
                                    <div class="col-sm-10">
                                        <select class="form-control" name="xueqi_id" id="xueQi"
                                                data-options="required:true">
                                            <option value="{{xueqi_id}}">{{xueQi}}</option>
                                        </select>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label class="col-sm-12 control-label"></label>
                                </div>
                                <div class="form-group">
                                    <label for="xueXiao" class="col-sm-2 control-label">学　校</label>
                                    <div class="col-sm-10">
                                        <select class="form-control" name="xuexiao_id" id="xueXiao"
                                                data-options="required:true">
                                            <option value="{{xuexiao_id}}">{{xueXiao}}</option>
                                        </select>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label class="col-sm-12 control-label"></label>
                                </div>
                                <div class="form-group">
                                    <label for="fuZeJiaoShi" class="col-sm-2 control-label">教　师</label>
                                    <div class="col-sm-10">
                                        <select class="form-control" name="jiaoshi_id" id="fuZeJiaoShi"
                                                data-options="required:true">
                                            <option value="{{jiaoshi_id}}">{{fuZeJiaoShi}}</option>
                                        </select>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label class="col-sm-12 control-label"></label>
                                </div>
                                <div class="form-group">
                                    <label for="keMu" class="col-sm-2 control-label">科　目</label>
                                    <div class="col-sm-10">
                                        <select class="form-control" name="kemu_id" id="keMu"
                                                data-options="required:true">
                                            <option value="{{kemu_id}}">{{keMu}}</option>
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
<script id="tpl_kaowu_show" type="text/html">
    <div>
        <div class="row clearfix">
            <div class="col-md-12 column">
                <div class="panel panel-default">
                    <div class="panel-heading" style="height: 30px">
                        <h3 class="panel-title">
                            学校
                        </h3>
                    </div>
                    <div class="panel-body">
                        <div>
                            <div class="btn-group" data-toggle="buttons">
                                {{each xueXiao }}
                                <button class="btn btn-sm" id="{{$value['xueXiaoMingCheng']}}" name="{{xueQiID}}"
                                        value="1"
                                        onclick="onXueXiao(this.id,this.name,{{$value['id']}})" autocomplete="off">
                                    {{$value['xueXiaoMingCheng']}}
                                </button>
                                {{/each}}
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-md-12 column" id="winwinKaoWuPanel" style="display: none">
                <div class="panel panel-default">
                    <div class="panel-heading" style="height: 30px">
                        <h3 class="panel-title" id="winKaoWuTitle"></h3>
                    </div>
                    <div class="panel-body" id="divKaoWuShow"
                         style="height: auto;max-height: 390px; overflow-x:hide; overflow-y:auto; ">

                    </div>

                </div>

            </div>
        </div>
    </div>
</script>
<script id="tplKaoWuShow" type="text/html">
    <table class="table  table-hover  table-condensed">
        <thead>
        <tr>
            <th class="table_th">　</th>
            <%--<th style="width:5%; font-size: 12px;overflow:hidden; text-overflow:ellipsis; white-space:nowrap;" id="id" onclick="orderBySortFun(this.id)">ID</th>--%>
            <th class="table_th max_hide">编码
            </th>
            <th class="table_th">学校
            </th>
            <th class="table_th max_hide">科目
            </th>
            <th class="table_th">负责教师
            </th>
            <th class="table_th max_hide">考试
            </th>
            <th class="table_th">状态
            </th>
            <th class="table_th max_hide">时间
            </th>
            <th class="table_th">操作</th>
        </tr>
        </thead>
        <tbody id="tbody">
        {{each kaoWus}}
        <tr>
            <th class="table_th">
                {{$index+1}}
            </th>
            <%--<td style="width:3%;font-size: 12px;overflow:hidden; text-overflow:ellipsis; white-space:nowrap;">{{$value['id']}}</td>--%>
            <td class="table_th max_hide">
                {{$value['code']}}
            </td>
            <td class="table_th">
                {{$value['xueXiao']}}
            </td>
            <td class="table_th max_hide">
                {{$value['keMu']}}
            </td>
            <td class="table_th"><a
                    href="wtai://wp/mc;{{$value['jiaoshishoujihao']}}">{{$value['fuZeJiaoShi']}}</a></td>
            <td class="table_th max_hide">
                {{$value['kaoShi']}}
            </td>
            <td class="table_th">
                {{if $value['zhuangTai'] ==0 }}
                <font style='color: #6a6a6a'>未开始</font>
                {{/if}}
                {{if $value['zhuangTai'] ==10 }}
                <font style='color: #00ff00'>筹备中</font>
                {{/if}}
                {{if $value['zhuangTai'] ==20 }}
                <font style='color: #00ff00'>正在报名</font>
                {{/if}}
                {{if $value['zhuangTai'] ==30 }}
                <font style='color: #00ff00'>已发布</font>
                {{/if}}
                {{if $value['zhuangTai'] == 40}}
                <font style='color: #ff0000'>考试中</font>
                {{/if}}
                {{if $value['zhuangTai'] == 50}}
                <font style='color: #ff0000'>正在阅卷</font>
                {{/if}}
                {{if $value['zhuangTai'] == 60}}
                <font style='color: #ff0000'>成绩发布</font>
                {{/if}}
                {{if $value['zhuangTai'] == 70}}
                <font style='color: #000000'>已完成</font>
                {{/if}}
                {{if $value['zhuangTai'] == -10}}
                <font style='color: #6a6a6a'>已取消</font>
                {{/if}}
                {{if $value['zhuangTai'] == -20}}
                <font style='color: #6a6a6a'>已终止</font>
                {{/if}}
                {{if $value['zhuangTai'] == -100}}
                <font style='color: #6a6a6a'>已删除</font>
                {{/if}}
            </td>
            <td class="table_th max_hide">
                {{$value['shiJian']}}
            </td>
            <td class="table_th">
                <%--<div class="dropdown pull-center">--%>
                <%--<p data-toggle="dropdown" class="dropdown-toggle">操作<strong class="caret"></strong></p>--%>
                <%--<ul class="dropdown-menu">--%>
                <%--<li>--%>
                <%--<a id="{{$value['id']}}"--%>
                <%--onclick="kaoWuFun(this.id,'msg')">详细信息</a>--%>
                <%--</li>--%>
                <%--&lt;%&ndash;<li>&ndash;%&gt;--%>
                <%--&lt;%&ndash;<a id="{{$value['iD']}}" href="javascript:void(0)"&ndash;%&gt;--%>
                <%--&lt;%&ndash;onclick="kaoWuFun(this.id,'upData')">修改</a>&ndash;%&gt;--%>
                <%--&lt;%&ndash;</li>&ndash;%&gt;--%>
                <%--<li class="divider">--%>
                <%--</li>--%>
                <%--<li>--%>
                <%--<a id="{{$value['id']}}" href="javascript:void(0)"--%>
                <%--onclick="kaoWuFun(this.id,'delete')">删除</a>--%>
                <%--</li>--%>
                <%--</ul>--%>
                <%--</div>--%>
                <a href="javascript:void(0);but_kaowu_detail({{$value['id']}});" title="详细"><i
                        class="glyphicon glyphicon-list-alt"></i></a>
                <a href="javascript:void(0);but_kaowu_edit({{$value['id']}});" title="修改"><i class="glyphicon glyphicon-pencil"></i></a>
                <a href="javascript:void(0);but_kaowu_delete({{$value['id']}});" title="删除"><i
                        class="glyphicon glyphicon-remove"></i></a>
            </td>
        </tr>
        {{/each }}
        </tbody>
    </table>
</script>
<script type="text/html" id="tpl_kaowu_content" >

</script>
<script type="text/javascript" src="${ctx}/widgets/kaowu/_kaowu.js"></script>
