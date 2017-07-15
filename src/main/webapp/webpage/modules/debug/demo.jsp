<%@ page contentType="text/html;charset=UTF-8" %>
<%@ include file="/webpage/include/taglib.jsp"%>
<html>
<head>
	<title>通知管理</title>
	<meta name="decorator" content="default"/>
</head>
<body class="gray-bg">
<div class="wrapper wrapper-content">
<div class="ibox">
<div class="ibox-title">
		<h5>测试Demo </h5>
		<div class="ibox-tools">
			<a class="collapse-link">
				<i class="fa fa-chevron-up"></i>
			</a>
			<a class="dropdown-toggle" data-toggle="dropdown" href="form_basic.html#">
				<i class="fa fa-wrench"></i>
			</a>
			<ul class="dropdown-menu dropdown-user">
				<li><a href="#">选项1</a>
				</li>
				<li><a href="#">选项2</a>
				</li>
			</ul>
			<a class="close-link">
				<i class="fa fa-times"></i>
			</a>
		</div>
	</div>
    
    <div class="ibox-content">
    <sys:message content="${message}"/>
	
		<!-- 查询条件 -->
	<div class="row">
	<div class="col-sm-12">
		<form:form id="searchForm" modelAttribute="coreEntity" action="${ctx}/core/debug/self" method="post" class="form-inline">
		<input id="pageNo" name="pageNo" type="hidden" value="${page.pageNo}"/>
		<input id="pageSize" name="pageSize" type="hidden" value="${page.pageSize}"/>
		<table:sortColumn id="orderBy" name="orderBy" value="${page.orderBy}" callback="sortOrRefresh();"/><!-- 支持排序 -->
		
		<div class="form-group">
			<span>条件：</span>
				<form:input path="name" htmlEscape="false" maxlength="200"  class=" form-control input-sm"/>
		</div>	
	</form:form>
	<br/>
	</div>
	</div>
	
	
	<!-- 工具栏 -->
	<div class="row">
	<div class="col-sm-12">
		<div class="pull-left">
			<shiro:hasPermission name="oa:oaNotify:add">
				<table:addRow url="${ctx}/core/debug/form" title="通知"></table:addRow><!-- 增加按钮 -->
			</shiro:hasPermission>
			<shiro:hasPermission name="oa:oaNotify:edit">
			    <table:editRow url="${ctx}/core/debug/form" id="contentTable"  title="通知" width="800px" height="700px"></table:editRow><!-- 编辑按钮 -->
			</shiro:hasPermission>
			<shiro:hasPermission name="oa:oaNotify:del">
				<table:delRow url="${ctx}/core/debug/deleteAll" id="contentTable"></table:delRow><!-- 删除按钮 -->
			</shiro:hasPermission>
			<shiro:hasPermission name="oa:oaNotify:import">
				<table:importExcel url="${ctx}/core/debug/import"></table:importExcel><!-- 导入按钮 -->
			</shiro:hasPermission>
			<shiro:hasPermission name="oa:oaNotify:export">
	       		<table:exportExcel url="${ctx}/core/debug/export"></table:exportExcel><!-- 导出按钮 -->
	       </shiro:hasPermission>
	      
	       <button class="btn btn-white btn-sm " data-toggle="tooltip" data-placement="left" onclick="sortOrRefresh()" title="刷新"><i class="glyphicon glyphicon-repeat"></i> 刷新</button>
			</div>
		<div class="pull-right">
			<button  class="btn btn-primary btn-rounded btn-outline btn-sm " onclick="search()" ><i class="fa fa-search"></i> 查询</button>
			<button  class="btn btn-primary btn-rounded btn-outline btn-sm " onclick="reset()" ><i class="fa fa-refresh"></i> 重置</button>
		</div>
	</div>
	</div>
	
	
	
	<table id="contentTable" class="table table-striped table-bordered  table-hover table-condensed  dataTables-example dataTable no-footer">
		<thead>
			<tr>
				<th> <input type="checkbox" class="i-checks"></th>
				<th>姓名</th>
				<th>年龄</th>
				<th>职位</th>
				<th>工号</th>
				<th>操作</th>
			</tr>
		</thead>
		<tbody>
		<c:forEach items="${page.list}" var="coreEntity">
			<tr>
				<td> <input type="checkbox" id="${coreEntity.id}" class="i-checks"></td>
				<td><a  href="#" onclick="openDialogView('查看通知', '${ctx}/core/debug/form?id=${coreEntity.id}','800px', '700px')">
					${fns:abbr(coreEntity.name,50)}
				</a></td>
				<td>
					${fns:abbr(coreEntity.age,50)}
				</td>
				<td>
					${fns:abbr(coreEntity.works,50)}
				</td>
				<td>
					${fns:abbr(coreEntity.num,50)}
				</td>
				<td>
					<shiro:hasPermission name="oa:oaNotify:view">
						<a href="#" onclick="openDialogView('查看', '${ctx}/core/debug/form?id=${coreEntity.id}','800px', '700px')" class="btn btn-info btn-xs btn-circle" ><i class="fa fa-search-plus"></i></a>
					</shiro:hasPermission>
					<shiro:hasPermission name="oa:oaNotify:edit">
    					<a href="#" onclick="openDialog('修改', '${ctx}/core/debug/form?id=${coreEntity.id}','800px', '700px')" class="btn btn-success btn-xs btn-circle" ><i class="fa fa-edit"></i></a>
    				</shiro:hasPermission>
    				<shiro:hasPermission name="oa:oaNotify:del">
						<a href="${ctx}/core/debug/delete?id=${coreEntity.id}" onclick="return confirmx('确认要删除该通知吗？', this.href)"   class="btn btn-danger btn-xs btn-circle"><i class="fa fa-trash"></i></a>
					</shiro:hasPermission>
				</td>
			</tr>
		</c:forEach>
		</tbody>
	</table>
	<!-- 分页代码 -->
	<table:page page="${page}"></table:page>
	<br/>
	<br/>
	</div>
	</div>
</div>
</body>
</html>