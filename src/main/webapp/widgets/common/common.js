/**
 * Created by Chris on 2016/10/4.
 */
$(function () {
    /**
     * 模板render函数
     */
    var renderFun = function (data, tplId) {
        var html = template(tplId, data);
        $('#container').html(html);
    };
    $.get("https://www.zhifz.com/app_ver", function (data) {
        if (typeof(data) == "string") {
            data = JSON.parse(data);
        }
        var dt = {
            appVer: data
        }
        renderFun(dt, 'appVer');
    });
});
