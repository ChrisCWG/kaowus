$(function () {

});
var pcN = ['id', 'luTiPiHao', 'xueXiao', 'keMu', 'fuZeJiaoShi', 'zhuangTai', 'kaiShiShiJian', 'jieZhiShiJian', 'luTiShuoMing', 'wenJianShuLiang', 'beiZhu','xueXiaoId','jiaoShiId','keMuId'];
var pc = {
    'id': '',
    'luTiPiHao': '',
    'xueXiao': '',
    'keMu': '',
    'fuZeJiaoShi': '',
    'zhuangTai': '',
    'kaiShiShiJian': '',
    'jieZhiShiJian': '',
    'luTiShuoMing': '',
    'wenJianShuLiang': '',
    'beiZhu': '',
    'xueXiaoId':'',
    'jiaoShiId':'',
    'keMuId':''
};
var pici_xuexiao;
function but_pici_add() {
    renderFun(null, 'tpl_pici_add', '_pici_content');
    _pici_add_xuexiao_init();
    _pici_add_kemu_init();
}
function but_pici_detail(id) {
    var pc = {id: id};
    var res = luti().put('pici', JSON.stringify(pc));
    renderFun(res[0], 'tpl_pici_detail', '_pici_content');
    $('#form_pici_add').find('input,select,textarea').prop('disabled', true);
    $('#zhuangTai').val(res[0].zhuangTai);
}
function but_pici_edit(id) {
    var pc = {id: id};
    var res = luti().put('pici', JSON.stringify(pc));
    renderFun(res[0], 'tpl_pici_edit', '_pici_content');
    _pici_add_xuexiao_init();
    _pici_add_kemu_init();
    _pici_add_jiaoshi_init(pici_xuexiao);
    $('#_pici_add_zhuangtai').val(res[0].zhuangTai);
    //$('#_pici_add_xuexiao').val(res[0].xueXiaoId);
    //$('#_pici_add_jiaoshi').val(res[0].jiaoShiId);
    $('#_pici_add_kemu').val(res[0].keMuId);
}
function but_pici_update() {
    var formData = $('#form_pici_update').serializeArray();
    $.each(formData, function (index, value) {
        $.each(pcN, function (i, v) {
            pc[value.name] = value.value;
        });
    });
    var res = luti().post('pici', JSON.stringify(pc));
    if (res.result) {
        alertSuccess('修改成功', 1000);
    } else {
        alertWarning('提交错误', 1000);
    }
}
function but_pici_delete(id) {
    alertDel("确定删除？",'3000',id,-3);
}
function _pici_add_xuexiao_init() {
    var xuexiao = luti().get('xuexiao');
    var dt = {xuexiao: xuexiao};
    pici_xuexiao = xuexiao;
    renderFun(dt, 'tpl_pici_add_xuexiao', '_pici_add_xuexiao');
    _pici_add_jiaoshi_init(xuexiao);
}
function _pici_add_jiaoshi_init(xuexiao) {
    var dt = {jiaoshi: xuexiao[0]['jiaoShis']};
    renderFun(dt, 'tpl_pici_add_jiaoshi', '_pici_add_jiaoshi');
}
function but_pici_add_jiaoshi_init(xuexiao_id) {
    $.each(pici_xuexiao, function (index, value) {
        if (value.id == xuexiao_id) {
            var dt = {jiaoshi: value.jiaoShis};
            renderFun(dt, 'tpl_pici_add_jiaoshi', '_pici_add_jiaoshi');
        }
    });
}
function _pici_add_kemu_init() {
    var kemu = luti().get('kemu');
    var dt = {kemu: kemu};
    renderFun(dt, 'tpl_pici_add_kemu', '_pici_add_kemu');
}
function form_but_pici_add() {
    var formData = $('#form_pici_add').serializeArray();
    var pcN = ['id', 'luTiPiHao', 'xueXiao', 'keMu', 'fuZeJiaoShi', 'zhuangTai', 'kaiShiShiJian', 'jieZhiShiJian', 'luTiShuoMing', 'wenJianShuLiang', 'beiZhu'];
    var pc = {
        'id': '',
        'luTiPiHao': '',
        'xueXiao': '',
        'keMu': '',
        'fuZeJiaoShi': '',
        'zhuangTai': '',
        'kaiShiShiJian': '',
        'jieZhiShiJian': '',
        'luTiShuoMing': '',
        'wenJianShuLiang': '',
        'beiZhu': ''
    };
    $.each(formData, function (index, value) {
        $.each(pcN, function (i, v) {
            pc[value.name] = value.value;
        });
    });
    var res = luti().post('pici', JSON.stringify(pc));
    if (res.result) {
        alertSuccess('提交成功', 1000);
    } else {
        alertWarning('提交错误', 1000);
    }
}
function form_but_pici_add_back() {
    renderFun(null, 'tpl_pici_show', '_pici_content');
    _pici_show();
}
function _pici_show() {
    var res = luti().get('pici');
    var dt = {pici: res};
    renderFun(dt, 'tpl_pici_add_show', '_pici_add_show');
    form_pici_relation_search();
}
function form_pici_relation_search() {
    var res = luti().get('PiCiRelation');
    var dt = {
        xuexiao: res[0],
        jiaoshi: res[1],
        kemu: res[2]
    }
    renderFun(dt, 'tpl_form_pici_relation_search', '_form_pici_relation_search')
}
function form_pici_relation_search_onchange() {
    var formData = $('#_form_pici_relation_search').serializeArray();
    $.each(formData, function (index, value) {
        $.each(pcN, function (i, v) {
            pc[value.name] = value.value;
        });
    });
    var res = luti().put('pici', JSON.stringify(pc));
    var dt = {pici: res};
    renderFun(dt, 'tpl_pici_add_show', '_pici_add_show');
}