$(function () {

});
var shN = ['id', 'luti_id', 'fuZeJaoShi', 'user_id', 'shenHeJinDu', 'xiuGaiJiLu', 'xiuGaiShuLiang', 'beiZhu'];
var sh = {
    'id': '',
    'luti_id': '',
    'fuZeJaoShi': '',
    'user_id': '',
    'shenHeJinDu': '',
    'xiuGaiJiLu': '',
    'xiuGaiShuLiang': '',
    'beiZhu': ''
};
var shenhe_pici;
function but_shenhe_add() {
    var res_a = luti().get('luTiRelation');
    var res_b = luti().get('luti/PiCiRelation');
    shenhe_pici = res_b;
    var dt = {
        shentiren: res_a[0],
        pici: res_b
    };
    renderFun(dt, 'tpl_shenhe_add', '_shenhe_content');
    _shenhe_add_pici_onchange(res_b[0].id);
}
function _shenhe_add_pici_onchange(pici_id) {
    $.each(shenhe_pici, function (index, value) {
        if (value.id == pici_id) {
            var dt = {lutiren: value.luTis};
            renderFun(dt, 'tpl_shenhe_add_lutiren', '_shenhe_add_lutiren');
        }
    });
}
function tpl_shenhe_lutiren(pici_id) {
    $.each(shenhe_pici, function (index, value) {
        if (value.id == pici_id) {
            var dt = {lutiren: value.luTis};
            renderFun(dt, 'tpl_shenhe_lutiren', '_shenhe_add_lutiren');
        }
    });
}
function but_shenhe_detail(id) {
    var res_a = luti().get('luTiRelation');
    var sh = {'id': id};
    var dt = { lutiren : res_a[0]};
    var res_c = luti().put('shenhe', JSON.stringify(sh));
    renderFun(res_c[0], 'tpl_shenhe_detail', '_shenhe_content');
    renderFun(dt,'tpl_shenhe_lutiren','_shenhe_add_lutiren');
    $('#form_shenhe_detail').find('input,select,textarea').prop('disabled', true);
    $('#_shenhe_add_shenhejindu').val(res_c[0].shenHeJinDu);
    $('#_shenhe_add_lutiren').val(res_c[0].luTiRen_ID);
}
function but_shenhe_edit(id) {
    var res_a = luti().get('luTiRelation');
    var res_b = luti().get('luti/PiCiRelation');
    var sh = {'id': id};
    var res_c = luti().put('shenhe', JSON.stringify(sh));
    shenhe_pici = res_b;
    var dt = {
        shentiren: res_a[0],
        pici: res_b
    };
    renderFun(dt, 'tpl_shenhe_edit', '_shenhe_content');
    _shenhe_add_pici_onchange(res_b[0].id);
    $('#_shenhe_detail_shenhe_id').val(res_c[0]['id']);
    $('#_shenhe_add_pici').val(res_c[0]['pici_id']);
    $('#_shenhe_add_lutiren').val(res_c[0]['luTiRen_ID']);
    $('#_shenhe_add_shenheren').val(res_c[0]['user_id']);
    $('#_shenhe_add_shenhejindu').val(res_c[0]['shenHeJinDu']);
    $('#_shenhe_add_xiugajilu').val(res_c[0]['xiuGaiJiLu']);
    $('#_shenhe_add_xiugaishuliag').val(res_c[0]['xiuGaiShuLiang']);
    $('#_shenhe_add_beizhu').val(res_c[0]['beiZhu']);
}
function but_shenhe_delete(id) {
    alertDel("确定删除？",'3000',id,-1);
}
function but_shenhe_add_save() {
    var formData = $('#form_shenhe_add').serializeArray();
    $.each(formData, function (index, value) {
        $.each(shN, function (i, v) {
            sh[value.name] = value.value;
        });
    });
    var res = luti().post('shenhe', JSON.stringify(sh));
    if (res.result) {
        alertSuccess('提交成功', 1000);
    } else {
        alertWarning('提交错误', 1000);
    }
}
function but_shenhe_update() {
    var formData = $('#form_shenhe_edit').serializeArray();
    $.each(formData, function (index, value) {
        $.each(shN, function (i, v) {
            sh[value.name] = value.value;
        });
    });
    var res = luti().post('shenhe', JSON.stringify(sh));
    if (res.result) {
        alertSuccess('修改成功', 1000);
    } else {
        alertWarning('提交错误', 1000);
    }
}
function but_shenhe_add_close() {
    renderFun(null, 'tpl_shenhe_show', '_shenhe_content');
    _shenhe_relation_search_init();
    _shenhe_table_show();
}
function _shenhe_relation_search_init() {
    var res = luti().get('luTiRelation');
    var dt = {
        pici: res[1],
        user: res[0]
    };
    renderFun(dt, 'tpl_shenhe_relation_search', '_shenhe_relation_search');
    _shenhe_table_show();
}
function _shenhe_relation_search_onchange() {
    var formData = $('#_shenhe_relation_search').serializeArray();
    $.each(formData, function (index, value) {
        $.each(shN, function (i, v) {
            sh[value.name] = value.value;
        });
    });
    var res = luti().put('shenhe', JSON.stringify(sh));
    var dt = {shenhe: res};
    renderFun(dt, 'tpl_shenhe_table_show', '_shenhe_table_show');
}
function _shenhe_table_show() {
    var sh = {};
    var res = luti().put('shenhe', JSON.stringify(sh));
    var dt = {shenhe: res};
    renderFun(dt, 'tpl_shenhe_table_show', '_shenhe_table_show');
}
