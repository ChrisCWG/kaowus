$(function () {
    $(document).bind('contextmenu', function () {
        contextMenu();
        return false;
    });
    var contextMenu = function () {

    };
    $('#onluti_pici').click(function(){
        renderFun(null,'tpl_pici','luti_content');
        renderFun(null,'tpl_pici_show','_pici_content');
        _pici_show();
    });
    $('#onluti_luru').click(function(){
        renderFun(null,'tpl_luru','luti_content');
        _luru_show_init();
    });
    $('#onluti_shenhe').click(function(){
        renderFun(null,'tpl_shenhe','luti_content');
        renderFun(null,'tpl_shenhe_show','_shenhe_content');
        _shenhe_relation_search_init();
    });
});
var renderFun = function (data, tplId, divId) {
    var html = template(tplId, data);
    $('#' + divId).html(html);
};
var luti = (function () {
    var resultData;
    get = function (url) {
        $.ajax({
            type: "GET",
            url: '/' +url,
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
    del = function (url, data) {
        $.ajax({
            type: 'DELETE',
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
        put:put,
        del:del
    };
});
function deleteObject(id,flag){
    $('#alert').hide();
    var dat = {'id':id};
    var res ;
    if(-1 == flag){
        res = luti().del('shenhe',JSON.stringify(dat));
        _shenhe_relation_search_init();
    }else if(-2 == flag){
        res = luti().del('luti',JSON.stringify(dat));
        _luru_show_init();
    }else if(-3 == flag){
        res = luti().del('pici',JSON.stringify(dat));
        _pici_show();
    }
    if (res) {
        alertSuccess('删除成功', 1000);
    } else {
        alertWarning('删除失败了(=^ ^=)', 1000);
    }
}