<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<div class="row clearfix">
    <div class="col-md-12 column">
        <br/><br/><br/>
    </div>
</div>
<%@include file="/content/common/alert.jsp" %>
<div class="row clearfix">
    <div class="col-md-2 column">
        <div class="panel panel-default">
            <div class="panel-heading" role="tab" id="collapse-header-disk" data-toggle="collapse"
                 data-parent="#accordion" href="#collapse-body-disk" aria-expanded="true"
                 aria-controls="collapse-body-disk">
                <h4 class="panel-title">
                    <i class="glyphicon glyphicon-list"></i>
                    &nbsp;
                </h4>
            </div>
            <div id="collapse-body-bpm-process" class="panel-collapse collapse in" role="tabpanel"
                 aria-labelledby="collapse-header-disk">
                <div class="panel-body">
                    <ul class="nav nav-list">
                        <li id="onluti_pici"><a href="javascript:void(0);"><i class="glyphicon glyphicon-list"></i> 题目批次</a>
                        </li>
                        <li id="onluti_luru"><a href="javascript:void(0);"><i class="glyphicon glyphicon-list"></i> 题目录入</a>
                        </li>
                        <li id="onluti_shenhe"><a href="javascript:void(0);"><i class="glyphicon glyphicon-list"></i>
                            题目审核</a></li>
                    </ul>
                </div>
            </div>
        </div>
    </div>
    <div class="col-md-10 column">
        <div id="luti_content">

        </div>
        <%@include file="_piCi.jsp" %>
        <%@include file="_luRu.jsp" %>
        <%@include file="_shenHe.jsp" %>
    </div>
</div>