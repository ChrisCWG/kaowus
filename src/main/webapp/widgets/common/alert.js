function alertWarning(msg,time){
    var dt = {result:'warning',msg:msg};
    renderFun(dt,'tplAlert','divAlert');
    $('#alert-warning').delay(time).hide(0);
}
function alertSuccess(msg,time){
    var dt = {result:'success',msg:msg};
    renderFun(dt,'tplAlert','divAlert');
    $('#alert-success').delay(time).hide(0);
}
function alertDanger(msg,time){
    var dt = {result:'danger',msg:msg};
    renderFun(dt,'tplAlert','divAlert');
    $('#alert-danger').delay(time).hide(0);
}
function alertDel(msg,time,id,flag){
    var dt = {result:'alert',msg:msg,id:id,flag:flag};
    renderFun(dt,'tplAlert','divAlert');
    $('#alert').delay(time).hide(0);
}

