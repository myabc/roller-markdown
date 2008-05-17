<%-- This page is designed to be included in edit-weblog.jsp --%>
<%@ include file="/WEB-INF/jsps/taglibs-struts2.jsp" %>

<link rel="stylesheet" type="text/css" href="<s:url value="/plugins-ui/authoring/editors/markitup/skins/markitup/style.css"/>" />
<link rel="stylesheet" type="text/css" href="<s:url value="/plugins-ui/authoring/editors/markitup/sets/markdown/style.css"/>" />
<script type="text/javascript" src="<s:url value="/plugins-ui/authoring/editors/jquery.pack.js"/>"></script>
<script type="text/javascript" src="<s:url value="/plugins-ui/authoring/editors/markitup/jquery.markitup.pack.js"/>"></script>
<script type="text/javascript" src="<s:url value="/plugins-ui/authoring/editors/markitup/sets/markdown/set.js"/>"></script>

<%-- ===================================================================== --%>
<p class="toplabel"><s:text name="weblogEdit.content" /></p>
<s:textarea name="bean.text" cols="75" rows="25" cssStyle="width: 100%" tabindex="5"/>

<%-- ===================================================================== --%>
<p class="toplabel"><s:text name="weblogEdit.summary" /></p>
<s:textarea name="bean.summary" cols="75" rows="5" cssStyle="width: 100%" tabindex="6"/>

<script language="javascript" type="text/javascript">
// customSettings = { ... }

// avoid conflicts with Prototype Library, used globally by Roller
jQuery.noConflict();
// apply MarkItUp!
jQuery(document).ready(function()	{
    jQuery('#entry_bean_text').markItUp(mySettings);
});
</script>
