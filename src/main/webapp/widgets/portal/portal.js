
$(function() {
	$('.dashboard').dashboard({
		afterPanelRemoved: function(panelId) {
		},
		afterOrdered: function(panelOrders) {
			var ids = ''
			for (var key in panelOrders) {
				var id = key;
				var priority = panelOrders[key];
				ids += 'ids=' + id.replace('panel', '') + '&priorities=' + priority + '&';
			}
		}
	});
    $.get("https://www.zhifz.com/app_ver", function (data) {
        if (typeof(data) == "string") {
            data = JSON.parse(data);
        }
        var dt={
            appVer:data
        }
        renderFun(dt,'appVer','divAppVer');
    });
});

/**
 * 模板render函数
 */
var renderFun = function (data, tplId,divId) {
    var html = template(tplId, data);
    $('#'+divId).html(html);
};
var appVerFun = function(){
    $.get("https://www.zhifz.com/app_ver", function (data) {
        if (typeof(data) == "string") {
            data = JSON.parse(data);
        }
        var dt={
            appVer:data
        }
        renderFun(dt,'appVer','divAppVer');
    });
};