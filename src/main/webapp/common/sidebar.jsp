<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="/common/taglib.jsp"%>
<!-- #section:basics/sidebar -->
<div id="sidebar" class="sidebar                  responsive">
	<script type="text/javascript">
		try {
			ace.settings.check('sidebar', 'fixed')
		} catch (e) {
			console.log(e);
		}
	</script>

	<!-- <div class="sidebar-shortcuts" id="sidebar-shortcuts">
		<div class="sidebar-shortcuts-large" id="sidebar-shortcuts-large">
			<button class="btn btn-success">
				<i class="ace-icon fa fa-signal"></i>
			</button>

			<button class="btn btn-info">
				<i class="ace-icon fa fa-pencil"></i>
			</button>

			#section:basics/sidebar.layout.shortcuts
			<button class="btn btn-warning">
				<i class="ace-icon fa fa-users"></i>
			</button>

			<button class="btn btn-danger">
				<i class="ace-icon fa fa-cogs"></i>
			</button>

			/section:basics/sidebar.layout.shortcuts
		</div>

		<div class="sidebar-shortcuts-mini" id="sidebar-shortcuts-mini">
			<span class="btn btn-success"></span> <span class="btn btn-info"></span>

			<span class="btn btn-warning"></span> <span class="btn btn-danger"></span>
		</div>
	</div>
	/.sidebar-shortcuts -->

	<ul class="nav nav-list">
		<li class=""><a
			href="<s:url includeParams="false" value="/console/dashboard"/>">
				<i class="menu-icon fa fa-tachometer"></i> <span class="menu-text">
					Dashboard </span>
		</a> <b class="arrow"></b></li>

		<li class=""><a href="javascript:void(0)" class="dropdown-toggle">
				<i class="menu-icon fa fa-pencil-square-o"></i> <span
				class="menu-text">意向申报 </span> <b class="arrow fa fa-angle-down"></b>
		</a> <b class="arrow"></b>
			<ul class="submenu">
				<li class=""><a href="javascript:void(0)"
					class="dropdown-toggle"> <i class="menu-icon fa fa-caret-right"></i>
						特许经销商 <b class="arrow fa fa-angle-down"></b>
				</a> <b class="arrow"></b>
					<ul class="submenu">
						<li class=""><a
							href="<s:url includeParams="false" value="/console/apply/condition/p/4s/"/>">
								<i class="menu-icon fa fa-caret-right"></i> 申请条件
						</a> <b class="arrow"></b></li>
						<li class=""><a
							href="<s:url includeParams="false" value="/console/apply/flow/p/4s/"/>">
								<i class="menu-icon fa fa-caret-right"></i> 申请流程
						</a> <b class="arrow"></b></li>
						<li class=""><a
							href="<s:url includeParams="false" value="/console/apply/query/p/4s/"/>">
								<i class="menu-icon fa fa-caret-right"></i> 申请信息查询
						</a> <b class="arrow"></b></li>
						<li class=""><a
							href="<s:url includeParams="false" value="/console/apply/approval/p/4s/"/>">
								<i class="menu-icon fa fa-caret-right"></i> 申请审批
						</a> <b class="arrow"></b></li>
						<li class=""><a
							href="<s:url includeParams="false" value="/console/apply/notice/p/4s/"/>">
								<i class="menu-icon fa fa-caret-right"></i> 意向批复
						</a> <b class="arrow"></b></li>
					</ul></li>
				<li class=""><a href="javascript:void(0)"
					class="dropdown-toggle"> <i class="menu-icon fa fa-caret-right"></i>
						直管直营店 <b class="arrow fa fa-angle-down"></b>
				</a> <b class="arrow"></b>
					<ul class="submenu">
						<li class=""><a
							href="<s:url includeParams="false" value="/console/apply/condition/p/rrs/"/>">
								<i class="menu-icon fa fa-caret-right"></i> 申请条件
						</a> <b class="arrow"></b></li>
						<li class=""><a
							href="<s:url includeParams="false" value="/console/apply/flow/p/rrs/"/>">
								<i class="menu-icon fa fa-caret-right"></i> 申请流程
						</a> <b class="arrow"></b></li>
						<li class=""><a
							href="<s:url includeParams="false" value="/console/apply/query/p/rrs/"/>">
								<i class="menu-icon fa fa-caret-right"></i> 申请信息查询
						</a> <b class="arrow"></b></li>
						<li class=""><a
							href="<s:url includeParams="false" value="/console/apply/approval/p/rrs/"/>">
								<i class="menu-icon fa fa-caret-right"></i> 申请审批
						</a> <b class="arrow"></b></li>
						<li class=""><a
							href="<s:url includeParams="false" value="/console/apply/notice/p/rrs/"/>">
								<i class="menu-icon fa fa-caret-right"></i> 意向批复
						</a> <b class="arrow"></b></li>
					</ul></li>
				<li class=""><a href="javascript:void(0)"
					class="dropdown-toggle"> <i class="menu-icon fa fa-caret-right"></i>
						城市展厅 <b class="arrow fa fa-angle-down"></b>
				</a> <b class="arrow"></b>
					<ul class="submenu">
						<li class=""><a
							href="<s:url includeParams="false" value="/console/apply/condition/p/cs/"/>">
								<i class="menu-icon fa fa-caret-right"></i> 申请条件
						</a> <b class="arrow"></b></li>
						<li class=""><a
							href="<s:url includeParams="false" value="/console/apply/flow/p/cs/"/>">
								<i class="menu-icon fa fa-caret-right"></i> 申请流程
						</a> <b class="arrow"></b></li>
						<li class=""><a
							href="<s:url includeParams="false" value="/console/apply/query/p/cs/"/>">
								<i class="menu-icon fa fa-caret-right"></i> 申请信息查询
						</a> <b class="arrow"></b></li>
						<li class=""><a
							href="<s:url includeParams="false" value="/console/apply/approval/p/cs/"/>">
								<i class="menu-icon fa fa-caret-right"></i> 申请审批
						</a> <b class="arrow"></b></li>
						<li class=""><a
							href="<s:url includeParams="false" value="/console/apply/notice/p/cs/"/>">
								<i class="menu-icon fa fa-caret-right"></i> 意向批复
						</a> <b class="arrow"></b></li>
					</ul></li>
				<li class=""><a href="javascript:void(0)"
					class="dropdown-toggle"> <i class="menu-icon fa fa-caret-right"></i>
						销售店 <b class="arrow fa fa-angle-down"></b>
				</a> <b class="arrow"></b>
					<ul class="submenu">
						<li class=""><a
							href="<s:url includeParams="false" value="/console/apply/condition/p/rr/"/>">
								<i class="menu-icon fa fa-caret-right"></i> 申请条件
						</a> <b class="arrow"></b></li>
						<li class=""><a
							href="<s:url includeParams="false" value="/console/apply/flow/p/rr/"/>">
								<i class="menu-icon fa fa-caret-right"></i> 申请流程
						</a> <b class="arrow"></b></li>
						<li class=""><a
							href="<s:url includeParams="false" value="/console/apply/query/p/rr/"/>">
								<i class="menu-icon fa fa-caret-right"></i> 申请信息查询
						</a> <b class="arrow"></b></li>
						<li class=""><a
							href="<s:url includeParams="false" value="/console/apply/approval/p/rr/"/>">
								<i class="menu-icon fa fa-caret-right"></i> 申请审批
						</a> <b class="arrow"></b></li>
						<li class=""><a
							href="<s:url includeParams="false" value="/console/apply/notice/p/rr/"/>">
								<i class="menu-icon fa fa-caret-right"></i> 意向批复
						</a> <b class="arrow"></b></li>
					</ul></li>
				<li class=""><a href="javascript:void(0)"
					class="dropdown-toggle"> <i class="menu-icon fa fa-caret-right"></i>
						易手车全功能服务商 <b class="arrow fa fa-angle-down"></b>
				</a> <b class="arrow"></b>
					<ul class="submenu">
						<li class=""><a
							href="<s:url includeParams="false" value="/console/apply/condition/p/ysc/"/>">
								<i class="menu-icon fa fa-caret-right"></i> 申请条件
						</a> <b class="arrow"></b></li>
						<li class=""><a
							href="<s:url includeParams="false" value="/console/apply/flow/p/ysc/"/>">
								<i class="menu-icon fa fa-caret-right"></i> 申请流程
						</a> <b class="arrow"></b></li>
						<li class=""><a
							href="<s:url includeParams="false" value="/console/apply/query/p/ysc/"/>">
								<i class="menu-icon fa fa-caret-right"></i> 申请信息查询
						</a> <b class="arrow"></b></li>
						<li class=""><a
							href="<s:url includeParams="false" value="/console/apply/approval/p/ysc/"/>">
								<i class="menu-icon fa fa-caret-right"></i> 申请审批
						</a> <b class="arrow"></b></li>
						<li class=""><a
							href="<s:url includeParams="false" value="/console/apply/notice/p/ysc/"/>">
								<i class="menu-icon fa fa-caret-right"></i> 意向批复
						</a> <b class="arrow"></b></li>
					</ul></li>
			</ul></li>

		<li class=""><a href="javascript:void(0)" class="dropdown-toggle">
				<i class="menu-icon fa fa-list-alt"></i> <span class="menu-text">设计方案
			</span> <b class="arrow fa fa-angle-down"></b>
		</a> <b class="arrow"></b>
			<ul class="submenu">
				<li class=""><a href="javascript:void(0)"
					class="dropdown-toggle"> <i class="menu-icon fa fa-caret-right"></i>
						直营店 <b class="arrow fa fa-angle-down"></b>
				</a> <b class="arrow"></b>
					<ul class="submenu">
						<li class=""><a href="top-menu.html"> <i
								class="menu-icon fa fa-caret-right"></i> 设计方案提交
						</a> <b class="arrow"></b></li>
						<li class=""><a href="mobile-menu-1.html"> <i
								class="menu-icon fa fa-caret-right"></i> 设计方案查询
						</a> <b class="arrow"></b></li>
						<li class=""><a href="mobile-menu-2.html"> <i
								class="menu-icon fa fa-caret-right"></i> 设计方案审批
						</a> <b class="arrow"></b></li>
					</ul></li>
			</ul></li>

		<li class=""><a
			href="<s:url includeParams="false" value="/console/other/contactus/"/>">
				<i class="menu-icon fa fa-calendar"></i> <span class="menu-text">
					意向进度 </span>
		</a> <b class="arrow"></b></li>

		<li class=""><a href="javascript:void(0)" class="dropdown-toggle">
				<i class="menu-icon fa fa-tag"></i> <span class="menu-text">
					系统管理 </span> <b class="arrow fa fa-angle-down"></b>
		</a> <b class="arrow"></b>
			<ul class="submenu">
				<li class=""><a
					href="<s:url includeParams="false" value="/console/support/publishcity/"/>">
						<i class="menu-icon fa fa-caret-right"></i> 招募城市发布
				</a> <b class="arrow"></b></li>
				<li class=""><a
					href="<s:url includeParams="false" value="/console/support/managerchange/"/>">
						<i class="menu-icon fa fa-caret-right"></i> 区域经理调整
				</a> <b class="arrow"></b></li>
				<li class=""><a
					href="<s:url includeParams="false" value="/console/support/profile/"/>">
						<i class="menu-icon fa fa-caret-right"></i> 个人中心
				</a> <b class="arrow"></b></li>
				<li class=""><a href="javascript:void(0)"
					class="dropdown-toggle"> <i class="menu-icon fa fa-caret-right"></i>
						模块管理 <b class="arrow fa fa-angle-down"></b>
				</a> <b class="arrow"></b>
					<ul class="submenu">
						<li class=""><a
							href="<s:url includeParams="false" value="/console/support/menu/"/>">
								<i class="menu-icon fa fa-caret-right"></i> 菜单管理
						</a> <b class="arrow"></b></li>
					</ul></li>
			</ul></li>

		<li class=""><a
			href="<s:url includeParams="false" value="/console/other/contactus/"/>">
				<i class="menu-icon fa fa-file-o"></i> <span class="menu-text">
					联系我们 </span>
		</a> <b class="arrow"></b></li>
	</ul>
	<!-- /.nav-list -->

	<!-- #section:basics/sidebar.layout.minimize -->
	<div class="sidebar-toggle sidebar-collapse" id="sidebar-collapse">
		<i class="ace-icon fa fa-angle-double-left"
			data-icon1="ace-icon fa fa-angle-double-left"
			data-icon2="ace-icon fa fa-angle-double-right"></i>
	</div>

	<!-- /section:basics/sidebar.layout.minimize -->
	<script type="text/javascript">
		try {
			ace.settings.check('sidebar', 'collapsed')
		} catch (e) {
			console.log(e);
		}
	</script>
</div>

<!-- /section:basics/sidebar -->