<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<div class="row clearfix" style="z-index: 999;position:fixed;width: 100%;">
    <div id="divAlert" class="col-md-12" align="center">
    </div>
</div>
<script id="tplAlert" type="text/html">
    {{if result == 'warning' }}
    <div class="alert alert-warning " id="alert-warning">
        <button type="button" class="close" data-dismiss="alert" aria-hidden="true">×</button>
        <h4>
            注意!
        </h4> <strong>警告!</strong> {{msg}}
    </div>
    {{/if}}
    {{if result == 'success' }}
    <div class="alert alert-success " id="alert-success">
        <button type="button" class="close" data-dismiss="alert" aria-hidden="true">×</button>
        <h4>
            注意!
        </h4> <strong>警告!</strong> {{msg}}
    </div>
    {{/if}}
    {{if result == 'danger' }}
    <div class="alert alert-danger " id="alert-danger">
        <button type="button" class="close" data-dismiss="alert" aria-hidden="true">×</button>
        <h4>
            注意!
        </h4> <strong>警告!</strong> {{msg}}
    </div>
    {{/if}}
    {{if result == 'alert' }}
    <div class="alert alert-warning " id="alert">
        <button type="button" class="close" data-dismiss="alert" aria-hidden="true">×</button>
        <h4>
            注意!
        </h4> <strong>警告!</strong> {{msg}}
        <a href="javascript:void(0)" class="close" onclick="deleteObject({{id}},{{flag}})">删除</a>
    </div>
    {{/if}}
</script>
<script type="text/javascript" src="${ctx}/widgets/common/alert.js"></script>
