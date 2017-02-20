$(function () {

});
var tools = (function () {
    var resultData;
    get = function (url) {
        $.ajax({
            type: "GET",
            url: url,
            dataType: "json",
            async: false,
            contentType: "application/json",
            success: function (data) {
                if (typeof(data) == "string") {
                    data = JSON.parse(data);
                }
                resultData = data;
            }, error: function (e) {
            }
        });
        return resultData;
    };
    post = function (url, data) {
        $.ajax({
            type: 'POST',
            url: '/' + url,
            dataType: "json",
            async: false,
            data: data,
            contentType: "application/json",
            success: function (data) {
                if (typeof(data) == "string") {
                    data = JSON.parse(data);
                }
                resultData = data;
            }, error: function (e) {
            }
        });
        return resultData;
    };
    put = function (url, data) {
        $.ajax({
            type: 'PUT',
            url: '/' + url,
            dataType: "json",
            async: false,
            data: data,
            contentType: "application/json",
            success: function (data) {
                if (typeof(data) == "string") {
                    data = JSON.parse(data);
                }
                resultData = data;
            }, error: function (e) {
            }
        });
        return resultData;
    };
    return {
        get: get,
        post: post,
        put:put
    };
});
function but_tools_xueqi_add() {
    var xueqi = $('#form_tools_xueqi_add_mingcheng').val();
    xueqi = {'学期名称': xueqi};
    xueqi = JSON.stringify(xueqi);
    var res = tools().post('xueqi', xueqi);
    if(res.result){
        alertSuccess('提交成功',1000);
    }else{
        alertWarning('提交错误',1000);
    }
}
function but_tools_xuexiao_add() {
    var formData = $('#form_tools_xuexiao_add').serializeArray();
    formData = formData[0]['value'].split(',');
    formData = {
        '学校ID': formData[1], '学校名称': formData[0]
    };
    formData = JSON.stringify(formData);
    var res = tools().post('xuexiao', formData);
    if(res.result){
        alertSuccess('提交成功',1000);
    }else{
        alertWarning('提交错误',1000);
    }
}
function but_tools_jiaoshi_add() {
    var formData = $('#form_tools_jianshi_add').serializeArray();
    formData = {
        '学校ID': formData[0]['value'],
        '教师姓名': formData[1]['value'],
        '手机号码': formData[2]['value']
    };
    formData = JSON.stringify(formData);
    var res = tools().post('jiaoshi', formData);
    if(res.result){
        alertSuccess('提交成功',1000);
    }else{
        alertWarning('提交错误',1000);
    }
}
function but_tools_kemu_add() {
    var formData = $('#form_tools_kemu_add').serializeArray();
    formData = {
        '科目名称': formData[0]['value'],
    };
    formData = JSON.stringify(formData);
    var res = tools().post('kemu', formData);
    if(res.result){
        alertSuccess('提交成功',1000);
    }else{
        alertWarning('提交错误',1000);
    }
}
function but_tools_xueqi_show() {
    var xueqi = tools().get('/xueqi');
    var dt = {xueqi: xueqi};
    renderFun(dt, 'tpl_tools_xueqi_show', '_tools_xueqi_show');
}
function but_tools_xuexiao_show() {
    var xuexiao = tools().get('/xuexiao');
    var dt = {xuexiao: xuexiao};
    renderFun(dt, 'tpl_tools_xuexiao_show', '_tools_xuexiao_show');
}
function but_tools_jiaoshi_show() {
    var jiaoshi = tools().get('/jiaoshi');
    var dt = {jiaoshi: jiaoshi};
    renderFun(dt, 'tpl_tools_jiaoshi_show', '_tools_jiaoshi_show');
}
function but_tools_kemu_show() {
    var kemu = tools().get('/kemu');
    var dt = {kemu: kemu};
    renderFun(dt, 'tpl_tools_kemu_show', '_tools_kemu_show');
}
function but_tools_xuexiao_init() {
    var xuexiao = tools().get('https://www.zhifz.com/xuexiao').data;
    var dt = {xuexiao: xuexiao};
    renderFun(dt, 'tpl_tools_modal_xuexiao_show', '_tools_modal_xuexiao_show');
}
function but_tools_jiaoshi_init() {
    var xuexiao = tools().get('/xuexiao');
    var dt = {xuexiao: xuexiao};
    renderFun(dt, 'tpl_tools_modal_jiaoshi_show', '_tools_modal_jiaoshi_show');
}
function but_tools_add_init() {
    _tools_add_xueqi_init();
    _tools_add_xuexiao_init();
    _tools_add_kemu_init();
}
function _tools_add_xueqi_init() {
    var xueqi = tools().get('/xueqi');
    var dt = {xueqi: xueqi};
    renderFun(dt, 'tpl_tools_add_xueqi', '_tools_add_xueqi');
}
var tools_xuexiao;
function _tools_add_xuexiao_init() {
    var xuexiao = tools().get('/xuexiao');
    var dt = {xuexiao: xuexiao};
    tools_xuexiao = xuexiao;
    renderFun(dt, 'tpl_tools_add_xuexiao', '_tools_add_xuexiao');
    _tools_add_jiaoshi_init(xuexiao);
}
function _tools_add_jiaoshi_init(xuexiao) {
    var dt = {jiaoshi: xuexiao[0]['jiaoShis']};
    renderFun(dt, 'tpl_tools_add_jiaoshi', '_tools_add_jiaoshi');
}
function but_tools_add_jiaoshi_init(xuexiao_id) {
        $.each(tools_xuexiao, function (index, value) {
            if(value.id == xuexiao_id){
                var dt = {jiaoshi: value.jiaoShis};
                renderFun(dt, 'tpl_tools_add_jiaoshi', '_tools_add_jiaoshi');
            }
        });
}
function _tools_add_kemu_init() {
    var kemu = tools().get('/kemu');
    var dt = {kemu: kemu};
    renderFun(dt, 'tpl_tools_add_kemu', '_tools_add_kemu');
}
