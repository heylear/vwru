<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="/common/taglib.jsp"%>
<!-- #section:basics/navbar.layout -->
<div id="navbar" class="navbar navbar-default">
	<script type="text/javascript">
		try {
			ace.settings.check('navbar', 'fixed')
		} catch (e) {
			console.log(e);
		}
	</script>

	<div class="navbar-container" id="navbar-container">
		<!-- #section:basics/sidebar.mobile.toggle -->
		<!-- <button type="button" class="navbar-toggle menu-toggler pull-left"
			id="menu-toggler">
			<span class="sr-only">Toggle sidebar</span> <span class="icon-bar"></span>

			<span class="icon-bar"></span> <span class="icon-bar"></span>
		</button> -->

		<!-- /section:basics/sidebar.mobile.toggle -->
		<div class="navbar-header pull-left">
			<!-- #section:basics/navbar.layout.brand -->
			<a href="#" class="navbar-brand"> <small><img
					class="logo"
					src="<s:url includeParams="false" value="/custom/images/logo.png"/>"
					alt="logo" /> 经销商招募系统 </small>
			</a>

			<!-- /section:basics/navbar.layout.brand -->

			<!-- #section:basics/navbar.toggle -->

			<!-- /section:basics/navbar.toggle -->
		</div>

		<!-- #section:basics/navbar.dropdown -->
		<div class="navbar-buttons navbar-header pull-right" role="navigation">
			<ul class="nav ace-nav">
				<li class="grey"><a data-toggle="dropdown"
					class="dropdown-toggle" href="#"> <i
						class="ace-icon fa fa-tasks"></i> <span class="badge badge-grey">2</span>
				</a>

					<ul
						class="dropdown-menu-right dropdown-navbar dropdown-menu dropdown-caret dropdown-close">
						<li class="dropdown-header"><i class="ace-icon fa fa-check"></i>
							目前有<span class="uncomplete">2<span>个未完成申请</li>

						<li><a href="#">
								<div class="clearfix">
									<span class="pull-left item-desc">山东临沂销售店申请</span> <span
										class="pull-right task-progress-rate">65%</span>
								</div>

								<div class="progress progress-mini">
									<div style="width: 65%" class="progress-bar"></div>
								</div>
						</a></li>

						<li><a href="#">
								<div class="clearfix">
									<span class="pull-left task-desc">山东临沂城市展厅申请</span> <span
										class="pull-right task-progress-rate">35%</span>
								</div>

								<div class="progress progress-mini">
									<div style="width: 35%"
										class="progress-bar progress-bar-danger"></div>
								</div>
						</a></li>
						<!-- <li class="dropdown-footer"><a href="#"> See tasks with
								details <i class="ace-icon fa fa-arrow-right"></i>
						</a></li> -->
					</ul></li>

				<li class="purple"><a data-toggle="dropdown"
					class="dropdown-toggle" href="#"> <i
						class="ace-icon fa fa-bell icon-animated-bell"></i> <span
						class="badge badge-important">1</span>
				</a>

					<ul
						class="dropdown-menu-right dropdown-navbar navbar-pink dropdown-menu dropdown-caret dropdown-close">
						<li class="dropdown-header"><i class="ace-icon fa fa-check"></i>
							目前有<span class="uncomplete">1<span>个待处理事项 </li>

						<li><a href="#">
								<div class="clearfix">
									<span class="pull-left"> <i
										class="btn btn-xs no-hover btn-pink fa fa-comment"></i>
										山东临沂易手车申请
									</span> <span class="pull-right badge badge-info">补充材料</span>
								</div>
						</a></li>

						<!-- <li class="dropdown-footer"><a href="#"> See all
								notifications <i class="ace-icon fa fa-arrow-right"></i>
						</a></li> -->
					</ul></li>

				<li class="green"><a data-toggle="dropdown"
					class="dropdown-toggle" href="#"> <i
						class="ace-icon fa fa-envelope icon-animated-vertical"></i> <span
						class="badge badge-success">1</span>
				</a>

					<ul
						class="dropdown-menu-right dropdown-navbar dropdown-menu dropdown-caret dropdown-close">
						<li class="dropdown-header"><i
							class="ace-icon fa fa-envelope-o"></i> 1 系统消息</li>

						<li class="dropdown-content">
							<ul class="dropdown-menu dropdown-navbar">
								<li><a href="#"> <span class="msg-body"> <span
											class="msg-title"> <span class="blue">RSSC:</span>
												山东临沂直营店申请已通过RSSC申请...
										</span> <span class="msg-time"> <i
												class="ace-icon fa fa-clock-o"></i> <span>1 小时前</span>
										</span>
									</span>
								</a></li>
							</ul>
						</li>

						<!-- <li class="dropdown-footer"><a href="inbox.html"> See all
								messages <i class="ace-icon fa fa-arrow-right"></i>
						</a></li> -->
					</ul></li>

				<!-- #section:basics/navbar.user_menu -->
				<li class="light-blue"><a data-toggle="dropdown" href="#"
					class="dropdown-toggle"> <img class="nav-user-photo"
						src="<s:url includeParams="false" value="/assets/avatars/user.jpg"/>"
						alt="Jason's Photo" /> <span class="user-info"> <small>上午好,</small>
							管理员
					</span> <i class="ace-icon fa fa-caret-down"></i>
				</a>

					<ul
						class="user-menu dropdown-menu-right dropdown-menu dropdown-yellow dropdown-caret dropdown-close">
						<li><a href="#"> <i class="ace-icon fa fa-cog"></i>
								设置
						</a></li>

						<li><a href="profile.html"> <i
								class="ace-icon fa fa-user"></i> 个人中心
						</a></li>

						<li class="divider"></li>

						<li><a href="#"> <i class="ace-icon fa fa-power-off"></i>
								注销
						</a></li>
					</ul></li>

				<!-- /section:basics/navbar.user_menu -->
			</ul>
		</div>

		<!-- /section:basics/navbar.dropdown -->
	</div>
	<!-- /.navbar-container -->
</div>
<!-- /section:basics/navbar.layout -->