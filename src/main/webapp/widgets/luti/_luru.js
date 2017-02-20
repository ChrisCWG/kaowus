$(function () {

});
var ltN = ['id', 'luTiPiHao', 'luTiRen', 'jinDu', 'wenJianMing', 'tiMuShuLiang', 'beiZhu', 'pici_id', 'user_id'];
var lt = {
    'id': '',
    'luTiPiHao': '',
    'luTiRen': '',
    'jinDu': '',
    'wenJianMing': '',
    'tiMuShuLiang': '',
    'beiZhu': '',
    'pici_id': '',
    'user_id': ''
};
function _luru_show_init() {
    renderFun(null, 'tpl_luru_show', '_luru_content');
    _luru_relation_search_init();
    _luru_table_show();
}
function but_luru_add() {
    var res = luti().get('luTiRelation');
    var dt = {
        pici: res[1],
        user: res[0]
    };
    renderFun(dt, 'tpl_luru_add', '_luru_content');
}
function but_luru_add_save() {
    var formData = $('#form_luru_add').serializeArray();
    $.each(formData, function (index, value) {
        $.each(ltN, function (i, v) {
            lt[value.name] = value.value;
        });
    });
    var res = luti().post('luti', JSON.stringify(lt));
    if (res.result) {
        alertSuccess('提交成功', 1000);
    } else {
        alertWarning('提交错误', 1000);
    }
}
function but_luru_add_close() {
    _luru_show_init();
}
function _luru_table_show() {
    var res = luti().get('luti');
    var dt = {luti: res};
    renderFun(dt, 'tpl_luru_table_show', '_luru_table_show');
}
function _luru_relation_search_init() {
    var res = luti().get('luTiRelation');
    var dt = {
        pici: res[1],
        user: res[0]
    };
    renderFun(dt, 'tpl_luru_relation_search', '_luru_relation_search');
}
function _luru_relation_search_onchange() {
    var formData = $('#_luru_relation_search').serializeArray();
    $.each(formData, function (index, value) {
        $.each(ltN, function (i, v) {
            lt[value.name] = value.value;
        });
    });
    var res = luti().put('luti', JSON.stringify(lt));
    var dt = {luti: res};
    renderFun(dt, 'tpl_luru_table_show', '_luru_table_show');
}
function but_luru_detail(id) {
    var lt = {'id':id};
    var res = luti().put('luti', JSON.stringify(lt));
    renderFun(res[0], 'tpl_luru_detail', '_luru_content');
    $('#form_luru_detail').find('input,select,textarea').prop('disabled', true);
    $('#jinDu').val(res[0]['jinDu']);
}
function but_luru_edit(id) {
    var lt = {'id':id};
    var res = luti().put('luti', JSON.stringify(lt));
    renderFun(res[0], 'tpl_luru_edit', '_luru_content');
    $('#jinDu').val(res[0]['jinDu']);
}
function but_luru_delete(id) {
    alertDel("确定删除？",'3000',id,-2);
}
function but_luru_update(){
    var formData = $('#form_luru_edit').serializeArray();
    $.each(formData, function (index, value) {
        $.each(ltN, function (i, v) {
            lt[value.name] = value.value;
        });
    });
    var res = luti().post('luti', JSON.stringify(lt));
    if (res.result) {
        alertSuccess('提交成功', 1000);
    } else {
        alertWarning('提交错误', 1000);
    }
}
