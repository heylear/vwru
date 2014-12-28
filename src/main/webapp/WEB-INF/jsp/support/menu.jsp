<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="/common/taglib.jsp"%>
<!DOCTYPE html>
<html lang="en">
<head>
<%@include file="/common/head.jsp"%>
</head>
<body class="no-skin">
	<%@include file="/common/before-body.jsp"%>
	<table id="grid-table"></table>
	<div id="grid-pager"></div>
	<%@include file="/common/after-body.jsp"%>
	<script type="text/javascript">
		var options = {
			caption : "系统菜单维护",
			pager : '#grid-pager',
			url : '<s:url includeParams="false" value="/console/support/menu/m/list"/>',
			colNames : [ '菜单编号', '菜单名称', '菜单级别', '菜单路径', '父菜单编号', '所属用户组', '操作' ],
			colModel : [ {
				name : 'imenu_code',
				width : 80
			}, {
				name : 'vmenu_desc',
				editable : true,
				width : 150
			}, {
				name : 'vmenu_stage_desc',
				editable : true,
				width : 80
			}, {
				name : 'vmenu_uri',
				editable : true,
				width : 200
			}, {
				name : 'ifcode',
				editable : true,
				width : 90
			}, {
				name : 'grpcode',
				editable : true,
				width : 90
			}, {
				name : 'option',
				width : 100
			} ]
		};
		$("#grid-table").jqGrid(options).navGrid(options.pager, {
			add : true,
			edit : true,
			del : true,
			search : true,
			refresh : true
		});
	</script>
</body>
</html>
