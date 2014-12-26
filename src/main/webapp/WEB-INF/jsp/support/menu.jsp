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
		jQuery(function() {
			var grid_selector = "#grid-table", pager_selector = "#grid-pager";
			$(grid_selector).jqGrid({
				url : '/vwru/console/support/menu/m/list',
				datatype : "json",
				height : 200,
				colNames : [ '编号', '菜单名称', '菜单类别', '父菜单编号', '所属用户组', '操作' ],
				colModel : [ {
					name : 'imenu_code',
					index : 'imenuCode',
					width : 60,
					sorttype : "int",
					editable : true
				}, {
					name : 'vmenu_desc',
					index : 'vmenu_desc',
					width : 60,
					sorttype : "int",
					editable : true
				}, {
					name : 'vmenu_stage_desc',
					index : 'vmenu_stage_desc',
					width : 60,
					sorttype : "int",
					editable : true
				}, {
					name : 'ifcode',
					index : 'ifcode',
					width : 60,
					sorttype : "int",
					editable : true
				}, {
					name : 'vmenu_uri',
					index : 'vmenu_uri',
					width : 60,
					sorttype : "int",
					editable : true
				}, {
					name : 'opt',
					index : '',
					width : 80,
					fixed : true,
					sortable : false,
					resize : false,
					formatter : 'actions',
					formatoptions : {
						keys : true,
						delOptions : {
							recreateForm : true,
							beforeShowForm : function() {
							}
						},
						editformbutton : true,
						editOptions : {
							recreateForm : true,
							beforeShowForm : function() {
							}
						}
					}
				} ],
				viewrecords : true,
				rowNum : 5,
				rowList : [ 5, 15, 25 ],
				pager : pager_selector,
				altRows : true,
				multiselect : true,
				//multikey : "ctrlKey",
				multiboxonly : true,
				loadComplete : function() {
					var table = this;
					setTimeout(function() {
						//styleCheckbox(table);
						//updateActionIcons(table);
						updatePagerIcons(table);
						enableTooltips(table);
					}, 0);
				},
				editurl : '',
				caption : '系统功能菜单维护',
				autowidth : true
			});
			$(grid_selector).jqGrid(
					'navGrid',
					pager_selector,
					{ //navbar options
						edit : true,
						editicon : 'ace-icon fa fa-pencil blue',
						add : true,
						addicon : 'ace-icon fa fa-plus-circle purple',
						del : true,
						delicon : 'ace-icon fa fa-trash-o red',
						search : true,
						searchicon : 'ace-icon fa fa-search orange',
						refresh : true,
						refreshicon : 'ace-icon fa fa-refresh green',
						view : true,
						viewicon : 'ace-icon fa fa-search-plus grey'
					},
					{
						//edit record form
						//closeAfterEdit: true,
						//width: 700,
						recreateForm : true,
						beforeShowForm : function(e) {
							var form = $(e[0]);
							form.closest('.ui-jqdialog').find(
									'.ui-jqdialog-titlebar').wrapInner(
									'<div class="widget-header" />')
							style_edit_form(form);
						}
					},
					{
						//new record form
						//width: 700,
						closeAfterAdd : true,
						recreateForm : true,
						viewPagerButtons : false,
						beforeShowForm : function(e) {
							var form = $(e[0]);
							form.closest('.ui-jqdialog').find(
									'.ui-jqdialog-titlebar').wrapInner(
									'<div class="widget-header" />')
							style_edit_form(form);
						}
					},
					{
						//delete record form
						recreateForm : true,
						beforeShowForm : function(e) {
							var form = $(e[0]);
							if (form.data('styled'))
								return false;

							form.closest('.ui-jqdialog').find(
									'.ui-jqdialog-titlebar').wrapInner(
									'<div class="widget-header" />')
							style_delete_form(form);

							form.data('styled', true);
						},
						onClick : function(e) {
							alert(1);
						}
					},
					{
						//search form
						recreateForm : true,
						afterShowSearch : function(e) {
							var form = $(e[0]);
							form.closest('.ui-jqdialog').find(
									'.ui-jqdialog-title').wrap(
									'<div class="widget-header" />')
							style_search_form(form);
						},
						afterRedraw : function() {
							style_search_filters($(this));
						},
						multipleSearch : true,
					/**
					multipleGroup:true,
					showQuery: true
					 */
					},
					{
						//view record form
						recreateForm : true,
						beforeShowForm : function(e) {
							var form = $(e[0]);
							form.closest('.ui-jqdialog').find(
									'.ui-jqdialog-title').wrap(
									'<div class="widget-header" />')
						}
					})
		});

		function updatePagerIcons(table) {
			var replacement = {
				'ui-icon-seek-first' : 'ace-icon fa fa-angle-double-left bigger-140',
				'ui-icon-seek-prev' : 'ace-icon fa fa-angle-left bigger-140',
				'ui-icon-seek-next' : 'ace-icon fa fa-angle-right bigger-140',
				'ui-icon-seek-end' : 'ace-icon fa fa-angle-double-right bigger-140'
			};
			$(
					'.ui-pg-table:not(.navtable) > tbody > tr > .ui-pg-button > .ui-icon')
					.each(
							function() {
								var icon = $(this);
								var $class = $.trim(icon.attr('class').replace(
										'ui-icon', ''));

								if ($class in replacement)
									icon.attr('class', 'ui-icon '
											+ replacement[$class]);
							})
		}

		function enableTooltips(table) {
			$('.navtable .ui-pg-button').tooltip({
				container : 'body'
			});
			$(table).find('.ui-pg-div').tooltip({
				container : 'body'
			});
		}

		function style_edit_form(form) {
			//enable datepicker on "sdate" field and switches for "stock" field
			form.find('input[name=sdate]').datepicker({
				format : 'yyyy-mm-dd',
				autoclose : true
			}).end().find('input[name=stock]').addClass(
					'ace ace-switch ace-switch-5').after(
					'<span class="lbl"></span>');
			//don't wrap inside a label element, the checkbox value won't be submitted (POST'ed)
			//.addClass('ace ace-switch ace-switch-5').wrap('<label class="inline" />').after('<span class="lbl"></span>');

			//update buttons classes
			var buttons = form.next().find('.EditButton .fm-button');
			buttons.addClass('btn btn-sm').find('[class*="-icon"]').hide();//ui-icon, s-icon
			buttons.eq(0).addClass('btn-primary').prepend(
					'<i class="ace-icon fa fa-check"></i>');
			buttons.eq(1).prepend('<i class="ace-icon fa fa-times"></i>')

			buttons = form.next().find('.navButton a');
			buttons.find('.ui-icon').hide();
			buttons.eq(0).append('<i class="ace-icon fa fa-chevron-left"></i>');
			buttons.eq(1)
					.append('<i class="ace-icon fa fa-chevron-right"></i>');
		}

		function style_delete_form(form) {
			var buttons = form.next().find('.EditButton .fm-button');
			buttons.addClass('btn btn-sm btn-white btn-round').find(
					'[class*="-icon"]').hide();//ui-icon, s-icon
			buttons.eq(0).addClass('btn-danger').prepend(
					'<i class="ace-icon fa fa-trash-o"></i>');
			buttons.eq(1).addClass('btn-default').prepend(
					'<i class="ace-icon fa fa-times"></i>')
		}

		function style_search_filters(form) {
			form.find('.delete-rule').val('X');
			form.find('.add-rule').addClass('btn btn-xs btn-primary');
			form.find('.add-group').addClass('btn btn-xs btn-success');
			form.find('.delete-group').addClass('btn btn-xs btn-danger');
		}
		function style_search_form(form) {
			var dialog = form.closest('.ui-jqdialog');
			var buttons = dialog.find('.EditTable')
			buttons.find('.EditButton a[id*="_reset"]').addClass(
					'btn btn-sm btn-info').find('.ui-icon').attr('class',
					'ace-icon fa fa-retweet');
			buttons.find('.EditButton a[id*="_query"]').addClass(
					'btn btn-sm btn-inverse').find('.ui-icon').attr('class',
					'ace-icon fa fa-comment-o');
			buttons.find('.EditButton a[id*="_search"]').addClass(
					'btn btn-sm btn-purple').find('.ui-icon').attr('class',
					'ace-icon fa fa-search');
		}

		function beforeDeleteCallback(e) {
			var form = $(e[0]);
			if (form.data('styled'))
				return false;

			form.closest('.ui-jqdialog').find('.ui-jqdialog-titlebar')
					.wrapInner('<div class="widget-header" />')
			style_delete_form(form);

			form.data('styled', true);
		}

		function beforeEditCallback(e) {
			var form = $(e[0]);
			form.closest('.ui-jqdialog').find('.ui-jqdialog-titlebar')
					.wrapInner('<div class="widget-header" />')
			style_edit_form(form);
		}
	</script>
</body>
</html>
