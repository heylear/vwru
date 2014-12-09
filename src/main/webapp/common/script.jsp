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

<!-- ace scripts -->
<script
	src="<s:url includeParams="false" value="/assets/js/ace-elements.min.js"/>"></script>
<script
	src="<s:url includeParams="false" value="/assets/js/ace.min.js"/>"></script>

<script type="text/javascript">
	ace.vars['base'] = '/vwru/';
</script>