<%@include file="/common/taglib.jsp"%>
<!-- basic scripts -->

<!--[if !IE]> -->
<script type="text/javascript">
	window.jQuery
			|| document
					.write("<script src='<s:url includeParams='false' value='/assets/js/jquery.min.js'/>'>"
							+ "<"+"/script>");
</script>

<!-- <![endif]-->

<!--[if IE]>
<script type="text/javascript">
 window.jQuery || document.write("<script src='<s:url includeParams='false' value='/assets/js/jquery1x.min.js'/>'>"+"<"+"/script>");
</script>
<![endif]-->
<script type="text/javascript">
	if ('ontouchstart' in document.documentElement)
		document
				.write("<script src='<s:url includeParams='false' value='/assets/js/jquery.mobile.custom.min.js'/>'>"
						+ "<"+"/script>");
</script>
<script
	src="<s:url includeParams="false" value="/assets/js/bootstrap.min.js"/>"></script>

<!-- page specific plugin scripts -->
<script src="<s:url includeParams="false" value="/assets/js/date-time/bootstrap-datepicker.min.js"/>"></script>
<script src="<s:url includeParams="false" value="/custom/js/grid.locale-ru.js"/>"></script>
<script src="<s:url includeParams="false" value="/assets/js/jqGrid/jquery.jqGrid.min.js"/>"></script>
<!-- <script src="../assets/js/date-time/bootstrap-datepicker.min.js"></script>
		<script src="../assets/js/jqGrid/jquery.jqGrid.min.js"></script>
		<script src="../assets/js/jqGrid/i18n/grid.locale-en.js"></script> -->
<!-- ace scripts -->
<script
	src="<s:url includeParams="false" value="/assets/js/ace-elements.min.js"/>"></script>
<script
	src="<s:url includeParams="false" value="/assets/js/ace.min.js"/>"></script>
