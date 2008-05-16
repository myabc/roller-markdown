<%-- This page is designed to be included in edit-weblog.jsp --%>
<%@ include file="/WEB-INF/jsps/taglibs-struts2.jsp" %>

<script type="text/javascript">

</script>

<%-- ===================================================================== --%>
<p class="toplabel"><s:text name="weblogEdit.content" /></p>

<s:textarea name="bean.text" cols="75" rows="25" cssStyle="width: 100%" tabindex="5"/>


<%-- ===================================================================== --%>
<p class="toplabel"><s:text name="weblogEdit.summary" /></p>

<s:textarea name="bean.summary" cols="75" rows="5" cssStyle="width: 100%" tabindex="6"/>
