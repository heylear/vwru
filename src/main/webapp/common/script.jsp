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

<!-- inline scripts related to this page -->
<link rel="stylesheet"
	href="<s:url includeParams="false" value="/assets/css/ace.onpage-help.css"/>" />
<link rel="stylesheet" href="../docs/assets/js/themes/sunburst.css" />

<script type="text/javascript">
	ace.vars['base'] = '..';
</script>

<script
	src="<s:url includeParams="false" value="/assets/js/ace/ace.onpage-help.js"/>"></script>
<script src="../docs/assets/js/rainbow.js"></script>
<script src="../docs/assets/js/language/generic.js"></script>
<script src="../docs/assets/js/language/html.js"></script>
<script src="../docs/assets/js/language/css.js"></script>
<script src="../docs/assets/js/language/javascript.js"></script>