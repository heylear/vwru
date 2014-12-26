<%@include file="/common/taglib.jsp"%>
<%@include file="/common/navbar.jsp"%>
<div class="main-container" id="main-container">
	<script type="text/javascript">
		try {
			ace.settings.check('main-container', 'fixed')
		} catch (e) {
			console.log(e);
		}
	</script>
	<%@include file="/common/sidebar.jsp"%>
	<div class="main-content">
		<%@include file="/common/breadcrumbs.jsp"%>
		<div class="page-content">
			<%@include file="/common/settingsbox.jsp"%>
			<div class="page-header">
				<h1>
					jqGrid <small> <i class="ace-icon fa fa-angle-double-right"></i>
						Dynamic tables
					</small>
				</h1>
			</div>
			<!-- /.page-header -->
			<div class="row">
				<div class="col-xs-12">
					<!-- PAGE CONTENT BEGINS -->