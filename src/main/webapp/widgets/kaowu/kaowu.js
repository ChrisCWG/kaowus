/**
 * Created by Chris on 2016/10/4.
 */
$(function () {
    $(document).bind('contextmenu', function () {
        contextMenu();
        return false;
    });
    getXueQi();
    renderFun(null, 'tpl_kaowu', 'kaowu_content');
    var contextMenu = function () {

    };

    $('#winTools').click(function () {
        renderFun(null, 'tpl_tools', 'kaowu_content');
    });
    $('#winXueQi').click(function () {
        renderFun(null, 'tpl_kaowu', 'kaowu_content');
        getXueQi();
    });
    $('#but_kaowu_add').click(function () {
        renderFun(null, 'tpl_tools_add', '_tools_content');
        but_tools_add_init();
    });
    $('#but_kaowu_manage').click(function(){
        renderFun(null, 'tpl_tools_manage', '_tools_content');
        but_tools_xueqi_show();
        but_tools_xuexiao_show();
        but_tools_jiaoshi_show();
        but_tools_kemu_show();
    });
    $('#putKaoWuSave').click(function () {
        var formData = $('#divXiangXi').serializeArray();
        $.ajax({
            type: 'POST',
            url: '/kaowu/putKaoWu',
            dataType: "json",
            contentType: "application/json",
            data: JSON.stringify(formData),
            success: function (data) {
                if (data.result >= 1) {
                    var dt = {
                        result: 'success',
                        msg: data.msg
                    }
                    renderFun(dt, 'tplAlert', 'divAlert');
                    $('#alert-sucess').delay(1500).hide(0);
                }
                if (data.result == -1) {
                    var dt = {
                        result: 'warning',
                        msg: data.msg
                    }
                    renderFun(dt, 'tplAlert', 'divAlert');
                    $('#alert-warning').delay(1500).hide(0);
                }
                if (data.result == 0) {
                    var dt = {
                        result: 'danger',
                        msg: data.msg
                    }
                    renderFun(dt, 'tplAlert', 'divAlert');
                    $('#alert-danger').delay(1500).hide(0);
                }
            },
            error: function (error) {
            }
        });
    });

});

var id_array = new Array();
var xueQiArr = new Array();
var xueQiVar = '';
var xiangXiTitle_l;

//    关闭面板则学校列表不显示

var renderFun = function (data, tplId, divId) {
    var html = template(tplId, data);
    $('#' + divId).html(html);
};
var getXueQi = function () {
    $.ajax({
        type: 'get',
        url: '/xueqi',
        success: function (data) {
            if (typeof(data) == "string") {
                data = JSON.parse(data);
            }
            xueQiArr = data;
            var dt = {
                xueQiArr: data
            }
            renderFun(dt, 'tplXueQi', 'divXueQi');
        }
    });
};
var getXueXiao = function (xueQi,xueQiMingCheng) {
//        显示学校列表
    $('#winXueXiao').show();
    $('#winwinKaoWuPanel').hide();
    $('#winXiangXiPanel').hide();
    $('#winKaoWuTitle').html(xueQiMingCheng);

    var dat = xueQiArr['' + xueQi + ''];
    if (dat.xueXiaos.length == 0) {
        $('#winXueXiao').hide();
    }
    var dt = {
        xueXiao: dat.xueXiaos,
        xueQiID: dat.id
    };
    renderFun(dt, 'tpl_kaowu_show', '_kaowu_content');
};
function onXueXiao(xueXiao,xueQiId, xueXiaoId) {
    var flag = $("#"+xueXiao).attr("value");
    //显示列表
    $('#winwinKaoWuPanel').show();
    if (xueQiVar == '' || xueQiVar == xueQiId) {
        _a();
    } else {
        id_array = [];
        _a();
    }
    function _a() {
        xueQiVar = xueQiId;
        if (flag == '1') {
            id_array.push(xueXiaoId);
            $("#"+xueXiao).attr("value", "0");
        } else {
            id_array.forEach(function (o, i) {
                if (xueXiaoId == o) {
                    id_array.splice(i, 1);
                }
            });
            $("#"+xueXiao).attr('value', '1');
        }
        getKaoWu(id_array);
    }
};
var getKaoWu = function (ids) {
    $.ajax({
        type: 'POST',
        url: '/kaowu/getKaoWu',
        dataType: "json",
        contentType: "application/json",
        data: JSON.stringify({"ids": ids, "xq": xueQiVar}),
        success: function (data) {
            if (typeof(data) == "string") {
                data = JSON.parse(data);
            }
            if (data.length == 0) {
                $('#winwinKaoWuPanel').hide();
            }
            var dt = {
                kaoWus: data.data.kaoWus
            }
            renderFun(dt, 'tplKaoWuShow', 'divKaoWuShow');
            //renderFun(data.data.page, 'tplPagination', 'divPagination');
        }, error: function (e) {
        }
    });
};

var flagAuth = function () {
    var data = JSON.stringify({'id': delId});
    _fun('POST', 'delKaoWu', 'delete', data);
    $('#alert').hide();
}
var delId = '';
var kaoWuFun = function (id, flag) {

    if (flag == "msg") {
        var data = JSON.stringify({'id': id});
        _fun('POST', 'getKaoWu', flag, data);

    } else if (flag == "delete") {
        delId = id;
        var dt = {
            result: 'alert',
            msg: "确定删除此信息吗？"
        }
        renderFun(dt, 'tplAlert', 'divAlert');
        $('#alert').delay(5000).hide(0);
    }
};
function _fun(type, url, flag, data) {
    $.ajax({
        type: type,
        url: '/kaowu/' + url,
        dataType: "json",
        contentType: "application/json",
        data: data,
        success: function (data) {
            if (flag == "msg") {
                if (typeof(data) == "string") {
                    data = JSON.parse(data);
                }
                renderFun(data, 'tplXiangXi', 'divXiangXi');

                $('#input6').val(data.zHUANGTAI);

                $('#putKaoWuSave').hide();
                $('#putKaoWuClose').hide();
                $('#winXiangXiPanel').hide();
                $('#xiangXiSave').hide();
                $('#xiangXiEdit').show();
                $('#xiangXiClose').show();


                $('#divXiangXi').find('input,select,textarea').prop('disabled', true);
                $('#winXiangXiTitle_f').html("详细信息: ");
                $('#winXiangXiTitle_l').html(data.xUEQI + " / " + data.xUEXIAO + " / " + data.iD);
                xiangXiTitle_l = $('#winXiangXiTitle_l').html();
                $('#winwinKaoWuPanel').hide();
                $('#winXueXiao').hide();
                $('#winXiangXiPanel').show();
            } else if (flag == "delete") {
                $('#divKaoWuShow').html('');
                if (data.result > 0) {
                    var dt = {
                        result: 'success',
                        msg: data.msg
                    }
                    renderFun(dt, 'tplAlert', 'divAlert');
                    $('#alert-sucess').delay(1500).hide(0);
                }
                getList(id_array);
            }
        }
    });
};
var page;
function pagination(pageFlag, id) {
    if (pageFlag == 'p') {
    } else if (pageFlag == 'ps') {
        $.ajax({
            type: 'POST',
            url: '/kaowu/getList',
            dataType: "json",
            contentType: "application/json",
            data: JSON.stringify({"ids": id_array, "xq": xueQiVar, "pageSize": id}),
            success: function (data) {
                if (typeof(data) == "string") {
                    data = JSON.parse(data);
                }
                if (data.length == 0) {
                    $('#winwinKaoWuPanel').hide();
                }

                var dt = {
                    kaoWus: data.data.kaoWus
                }
                page = data.data.page;
                renderFun(dt, 'tplKaoWuShow', 'divKaoWuShow');
                renderFun(data.data.page, 'tplPagination', 'divPagination');
            }, error: function (e) {
            }
        });
    }

};
var orderFlag = 0;
var orderBySortFun = function (sort) {
    $.ajax({
        type: 'POST',
        url: '/kaowu/getList',
        dataType: "json",
        contentType: "application/json",
        data: JSON.stringify({"ids": id_array, "xq": xueQiVar, "sort": sort, "orderFlag": orderFlag}),
        success: function (data) {
            orderFlag++;
            if (typeof(data) == "string") {
                data = JSON.parse(data);
            }
            if (data.length == 0) {
                $('#winwinKaoWuPanel').hide();
            }
            var dt = {
                kaoWus: data.data.kaoWus
            }
            page = data.data.page;
            renderFun(dt, 'tplKaoWuShow', 'divKaoWuShow');
            renderFun(data.data.page, 'tplPagination', 'divPagination');
        }, error: function (e) {
        }
    });
};
var request_app = (function () {
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
function deleteObject(id,flag) {
    $('#alert').hide();
    var dat = {'id': id};
    var res;
    if (-11 == flag) {
        res = request_app().del('kaowu/kaowu',JSON.stringify(dat));
    }
    if (res) {
        alertSuccess('删除成功', 1000);
    } else {
        alertWarning('删除失败了(=^ ^=)', 1000);
    }
}