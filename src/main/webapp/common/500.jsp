<%@ page contentType="text/html;charset=UTF-8" isErrorPage="true" %>
<%response.setStatus(200);%>
<!DOCTYPE html>
<html lang="en">
<head>
    <%@include file="/common/meta.jsp" %>
    <title>系统内部发生错误</title>
    <%@include file="/common/s.jsp" %>
</head>
<body>
<div class="container" style="margin: auto">
    <div class="row clearfix" style="margin-top: 10%">
        <div class="col-md-12 column">
            <div class="page-header">
                <h1 align="center">
                    500
                </h1>
            </div>
            <h3 align="center">
                系统内部发生错误
            </h3>
            <table align="center" style="margin: 20px auto auto auto">
                <tr>
                    <td>
                        <a class="btn btn-default"  href="${ctx}/index.jsp">返回首页</a>
                    </td>
                    <td>　　　　</td>
                    <td>
                        <a  class="btn btn-default"  href="javascript:void(0);"
                            onclick="sendMail()"><span id="ss">联系管理员</span></a>
                    </td>

                </tr>
            </table>
        </div>

    </div>
</div>
</body>
</html>
<script>
    function sendMail(){
        $.ajax({
            type:'get',
            url:'${pageContext.request.contextPath}/email/sendMail',
            success:function(data){
                if (typeof(data) == "string") {
                    data = JSON.parse(data);
                    ale(data);
                } else {
                    ale(data);
                }
            }
        });
        $('#ss').html("信息已发送");
    }
    function ale(data){
        if(data.result > 0){
            alert(data.msg);
        }else{
            alert(data.msg);
        }
    }

</script>

