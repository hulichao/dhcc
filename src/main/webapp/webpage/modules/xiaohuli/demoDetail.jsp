<%@ page contentType="text/html;charset=UTF-8" %>
<%@ include file="/webpage/include/taglib.jsp"%>
<html>
<head>
	<title>机构管理</title>
	<script src="${ctxJavaScript}/xiaohuli/demoDetial.js"></script>
</head>
<body>
		<input type="hidden" value="${data }" id="data">
		<table style="papadding:10px">
			   <tbody id="dataBox">
			   		<input type="hidden" id="id" value="${data.id }">
			      <tr>
			         <td class="width-15 "><label>姓名:</label></td>
			         <td class="width-35"><input type="text" id="name" value="${data.name }"></td>
			         <td  class="width-15"><label>年龄:</label></td>
			         <td class="width-35"><input type="text" id="age" value="${data.age }"></td>
			      </tr>
			      <tr>
			         <td class="width-15 "><label>工作:</label></td>
			          <td class="width-35"><input type="text" id="works" value="${data.works }"></td>
			         <td  class="width-15"><label>工号:</label></td>
			          <td class="width-35"><input type="text" id="num" value="${data.num }"></td>
			      </tr>
			      <tr>
			         <td align="center" colspan="4">
			         	<input type="button" value="保存" class="btn" id="btnSave">
			         	<input type="button" value="关闭" class="btn" id="btnClose">
			         </td>
			      </tr>
		      </tbody>
	      </table>
</body>
</html>