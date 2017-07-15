<%@ page contentType="text/html;charset=UTF-8" %>
<%@ include file="/webpage/include/taglib.jsp"%>
<!DOCTYPE html>
<!--[if lt IE 7]>      <html class="no-js lt-ie9 lt-ie8 lt-ie7"> <![endif]-->
<!--[if IE 7]>         <html class="no-js lt-ie9 lt-ie8"> <![endif]-->
<!--[if IE 8]>         <html class="no-js lt-ie9"> <![endif]-->
<!--[if gt IE 8]><!--> <html class="no-js"> <!--<![endif]-->
    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
        <title>操作演示&Bootstrap样式</title>
        <meta name="description" content="">
        <meta name="viewport" content="width=device-width">

        <!-- Place favicon.ico and apple-touch-icon.png in the root directory -->
        <link rel="stylesheet" href="${ctxStatic}/mmgrid/css/normalize.css">
        <link rel="stylesheet" href="${ctxStatic}/mmgrid/css/bootstrap.css">
        <link rel="stylesheet" href="${ctxStatic}/mmgrid/css/mmGrid.css">
        <link rel="stylesheet" href="${ctxStatic}/mmgrid/css/mmGrid-bootstrap.css">
        <link rel="stylesheet" href="${ctxStatic}/mmgrid/css/mmPaginator.css">
        <link rel="stylesheet" href="${ctxStatic}/mmgrid/css/mmPaginator-bootstrap.css">
        <link href="${ctxStatic}/bootstrap-dialog/css/bootstrap-dialog.css" rel="stylesheet" />
        <style>
            html,
            body{
                font-family: 'Helvetica Neue',helvetica, "Hiragino Sans GB",'Microsoft YaHei', "WenQuanYi Micro Hei", sans-serif;
                font-size: 12px;
                color: #444;
            }
            .btn{
                font-size: 12px;
            }
            .btnPrice {
                display: block;
                width: 16px;
                height: 16px;
                margin: 0px auto;
                background: url(img/botton_g1.gif) no-repeat;
            }

            .btnPrice:hover {
                background: url(img/botton_g2.gif) no-repeat;
            }
        </style>
        <!--[if lt IE 9]>
        <script src="js/vendor/html5shiv.js"></script>
        <![endif]-->
        <script src="${ctxStatic}/mmgrid/js/modernizr-2.6.2.min.js"></script>
    </head>
    <body style="padding: 40px;">
    	<input type="hidden" value="${ctx}" id="ctx">
        <main>
            <div style="margin-bottom: 5px;">
            	<button id="btnAdd" class="btn" >添加</button>
                <button id="btnDela" class="btn" >删除</button>
                <button id="btnUpdate" class="btn" >修改</button>
                <input id="secucode" placeholder="查询条件:股票代码" style="margin-left: 20px;"> <button id="btnSearch" class="btn" >搜索</button>
            </div>
            <table id="mmg" class="mmg">
                <tr style="text-align:center">
                    <th rowspan="" colspan=""></th>
                </tr>
            </table>
            <div id="pg" style="text-align: right;"></div>
			<!-- 模态框（Modal） -->
			<div class="modal fade" id="showModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
			  <div class="modal-dialog" role="document" style="width: 800px">
			    <div class="modal-content">
			      <div class="modal-header">
			        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
			        <h4 class="modal-title" id="myModalLabel">Modal title</h4>
			      </div>
			      <div class="modal-body">
			        ...
			      </div>
			      <div class="modal-footer">
			        <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
			        <button type="button" class="btn btn-primary">Save changes</button>
			      </div>
			    </div>
			  </div>
			</div>
        </main>

        <script src="${ctxStatic}/mmgrid/js/jquery-1.9.1.min.js"></script>
        <script src="${ctxStatic}/bootstrap-dialog/js/bootstrap.min.js" type="text/javascript"></script>
        <script src="${ctxStatic}/mmgrid/js/pluginsM.js"></script>
        <script src="${ctxStatic}/mmgrid/js/json2M.js"></script>
        <script src="${ctxStatic}/mmgrid/js/mmGrid.js"></script>
        <script src="${ctxStatic}/mmgrid/js/mmPaginator.js"></script>
        <script src="${ctxJavaScript}/demo/demo.js"></script>
    </body>
</html>
