$(function () {

});

var kaowu = (function () {
    var resultData;
    getKaowu = function (ids) {
        $.ajax({
            type: 'POST',
            url: '/kaowu/getkaowu',
            dataType: "json",
            async: false,
            contentType: "application/json",
            data: JSON.stringify({"KID": ids}),
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
        getKaowu: getKaowu
    };
});
function but_kaowu_detail(id) {
    var res = kaowu().getKaowu(id);
    renderFun(res.data, 'tpl_kaowu_detail', '_kaowu_content');
    $('#form_kaowu_detail').find('input,select,textarea').prop('disabled', true);
    $('#zhuangTai').val(res.data.zhuangTai);
}
function but_kaowu_edit(id) {
    var res = kaowu().getKaowu(id);
    renderFun(res.data, 'tpl_kaowu_edit', '_kaowu_content');
    $('#zhuangTai').val(res.data.zhuangTai);

}
function but_kaowu_update(id){
    var formData = $('#form_kaowu_edit').serializeArray();
    var str = ['id','code','xueQi','xuexiao_id','xueqi_id','jiaoshi_id','kemu_id','xueXiao','fuZeJaoShi','keMu','zhuangTai','kaoShi','shiJian','renShu','kaoChang','changCi','tiMu','zhuGuanTi','dianZhenBi','daTiZhi','baoMing','shiJuan','jinDu','kaoChangBuShu','zhiShiDaGang','kaoShengXinXi','canYuJiaoShi','beiZhu'];
    var kw = {'id':'','code':'','xueQi':'','xuexiao_id':'','xueqi_id':'','jiaoshi_id':'','kemu_id':'','xueXiao':'','fuZeJaoShi':'','keMu':'','zhuangTai':'','kaoShi':'','shiJian':'','renShu':'','kaoChang':'','changCi':'','tiMu':'','zhuGuanTi':'','dianZhenBi':'','daTiZhi':'','baoMing':'','shiJuan':'','jinDu':'','kaoChangBuShu':'','zhiShiDaGang':'','kaoShengXinXi':'','canYuJiaoShi':'','beiZhu':''};
    $.each(formData,function(index,value){
        $.each(str,function(i,v){
            kw[value.name] = value.value;
        });
    });
    var res = tools().put('kaowu/kaowu',JSON.stringify(kw));
    if(res.result){
        alertSuccess('提交成功',1000);
    }else{
        alertWarning('提交错误',1000);
    }
}
function but_kaowu_delete(id) {
    alertDel("确定删除？",'3000',id,-11);
}
function but_kaowu_add(){
    var formData = $('#form_kaowu_add').serializeArray();
    var str = ['id','code','xueQi','xueXiao','fuZeJaoShi','keMu','zhuangTai','kaoShi','shiJian','renShu','kaoChang','changCi','tiMu','zhuGuanTi','dianZhenBi','daTiZhi','baoMing','shiJuan','jinDu','kaoChangBuShu','zhiShiDaGang','kaoShengXinXi','canYuJiaoShi','beiZhu'];
    var kw = {'id':'','code':'','xueQi':'','xueXiao':'','fuZeJaoShi':'','keMu':'','zhuangTai':'','kaoShi':'','shiJian':'','renShu':'','kaoChang':'','changCi':'','tiMu':'','zhuGuanTi':'','dianZhenBi':'','daTiZhi':'','baoMing':'','shiJuan':'','jinDu':'','kaoChangBuShu':'','zhiShiDaGang':'','kaoShengXinXi':'','canYuJiaoShi':'','beiZhu':''};
    $.each(formData,function(index,value){
        $.each(str,function(i,v){
            kw[value.name] = value.value;
        });
    });
    var res = tools().post('kaowu/kaowu',JSON.stringify(kw));
    if(res.result){
        alertSuccess('提交成功',1000);
    }else{
        alertWarning('提交错误',1000);
    }
}
function but_kaowu_edit_back() {
    renderFun(null, 'tpl_kaowu_content', '_kaowu_content');
}

