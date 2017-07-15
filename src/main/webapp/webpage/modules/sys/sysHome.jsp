<%@ page contentType="text/html;charset=UTF-8" %>
<%@ include file="/webpage/include/taglib.jsp"%>
<html>
<head>
	<title>首页</title>
	<meta name="decorator" content="default"/>
	<script type="text/javascript">
		$(document).ready(function() {
		     WinMove();
		});
	</script>
</head>
<body class="gray-bg">
	<div class="wrapper wrapper-content">
   <div class="row  border-bottom white-bg dashboard-header">
        <div class="col-sm-12">
            <blockquote class="text-info" style="font-size:14px">该系统是一个教学系统，是基于peeplus系统框架的基础上二次改造。主要用于做实验。
    			<br/>
               <br>采用了目前极为流行的扁平化响应式的设计风格，可以完美的兼容电脑，pad，手机等多个平台。前端UI采用了<a target="_blank" href="http://wrapbootstrap.com/preview/WB0R5L90S">INSPINIA</a>(点击访问）为原型开发。
                <br>…………
            </blockquote>

            <hr>
        </div>
    </div>
      
    <div class="wrapper wrapper-content">
        <div class="row">
            <div class="col-sm-4">

                <div class="ibox float-e-margins">
                     <div class="ibox-title">
                        <h5>技术特点</h5> 
                        <div class="ibox-tools">
                            <a class="collapse-link">
                                <i class="fa fa-chevron-up"></i>
                            </a>
                            <a class="dropdown-toggle" data-toggle="dropdown" href="index.html#">
                                <i class="fa fa-wrench"></i>
                            </a>
                            <ul class="dropdown-menu dropdown-user">
                                <li><a href="index.html#">选项1</a>
                                </li>
                                <li><a href="index.html#">选项2</a>
                                </li>
                            </ul>
                            <a class="close-link">
                                <i class="fa fa-times"></i>
                            </a>
                        </div>
                    </div>
                    <div class="ibox-content">
                        <p> 该系统开发平台采用 SpringMVC + MyBatis + BootStrap + Apache Shiro + Ehcache 开发组件 的基础架构,采用面向声明的开发模式， 基于泛型编写极少代码即可实现复杂的数据展示、数据编辑、
表单处理等功能。</p>

                        <ol>
						<li>基础用户权限，强大数据权限，操作权限控制精密细致，对所有管理链接都进行权限验证，可控制到按钮，对指定数据集权限进行过滤</li>
						<li>查询过滤器，查询功能自动生成，后台动态拼SQL追加查询条件；支持多种匹配方式（全匹配/模糊查询/包含查询/不匹配查询） </li>
						<li>UI标签库，针对WEB UI进行标准封装，页面统一采用UI标签实现功能：封装了bootstrap风格的table，检索，部门选择 ，人员选择等常用控件。</li>
						<li>系统日志监控，详细记录操作日志，可支持追查表修改日志</li>
						<li>WebSocket集成：集成在线聊天系统。</li>
						<li>提供常用工具类封装，日志、缓存、验证、字典、组织机构等，常用标签（taglib），获取当前组织机构、字典等数据。</li>
						<li>工作流组件（开发中）</li>
						<li>快速体验</li>
						<li>支持多种浏览器: IE, 火狐, Google 等浏览器访问速度都很快</li>
						<li>支持数据库: Mysql,Oracle数据库的支持，但不限于数据库，平台留有其它数据库支持接口等</li>
						
						<li>要求JDK1.6+</li>
                        </ol>
                    </div>
                </div>
              
            </div>
            <div class="col-sm-4">
                <div class="ibox float-e-margins">
                     <div class="ibox-title">
                        <h5>升级日志</h5> <span class="label label-primary">K+</span>
                        <div class="ibox-tools">
                            <a class="collapse-link">
                                <i class="fa fa-chevron-up"></i>
                            </a>
                            <a class="dropdown-toggle" data-toggle="dropdown" href="index.html#">
                                <i class="fa fa-wrench"></i>
                            </a>
                            <ul class="dropdown-menu dropdown-user">
                                <li><a href="index.html#">选项1</a>
                                </li>
                                <li><a href="index.html#">选项2</a>
                                </li>
                            </ul>
                            <a class="close-link">
                                <i class="fa fa-times"></i>
                            </a>
                        </div>
                    </div>
                    <div class="ibox-content">
                        <div class="panel-body">
                            <div class="panel-group" id="version">
                            
                            	<div class="panel panel-default">
                                    <div class="panel-heading">
                                        <h5 class="panel-title">
                                                <a data-toggle="collapse" data-parent="#version" href="#v2.6">v2.6</a><code class="pull-right">2017.7.6更新</code>
                                            </h5>
                                    </div>
                                    <div id="v2.6" class="panel-collapse collapse in">
                                        <div class="panel-body">
                                            <ol>
                                            	<li>这是一个练习版本。</li>
                                            	<li>新增mmgrid数据展示列表。</li>
                                            	<li>新增bootstrap模态框。</li>
                                            	<li>修改控制层的请求方式。</li>
                                            	<li>jsp页面与js分层。</li>
                                                <li>.........</li>
                                            </ol>
                                        </div>
                                    </div>
                                </div>
                </div>
            </div>
            </div>
            </div>
            </div>
            <div class="col-sm-4">
                <div class="ibox float-e-margins">
                    <div class="ibox-title">
                        <h5>需要改进地方 </h5>
                    </div>
                    <div class="ibox-content">
                        <ol>
                            <li>封装分页器</li>
                            <li>封装控制层数据传递map</li>
                            <li>完善mmgrid</li>
                            <li>模态框改善</li>
                            <li>流程activiti集成</li>
                        </ol>
                        <hr>
                    </div>
                </div>
            </div>
        </div>
    </div>
	</div>
</body>
</html>