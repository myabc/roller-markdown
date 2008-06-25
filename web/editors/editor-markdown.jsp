<%-- This page is designed to be included in edit-weblog.jsp --%>
<%@ include file="/WEB-INF/jsps/taglibs-struts2.jsp" %>

<link rel="stylesheet" type="text/css" href="<s:url value="/plugins-ui/authoring/editors/markitup/skins/simple/style.css"/>" />
<link rel="stylesheet" type="text/css" href="<s:url value="/plugins-ui/authoring/editors/markitup/sets/markdown/style.css"/>" />
<style type="text/css">
/* Override textarea sizes set in skins/simple/style.css */
textarea#entry_bean_text    {  height: 300px !important; }
textarea#entry_bean_summary {  height: 150px !important; }
</style>

<script type="text/javascript" src="<s:url value="/plugins-ui/authoring/editors/jquery.pack.js"/>"></script>
<script type="text/javascript" src="<s:url value="/plugins-ui/authoring/editors/markitup/jquery.markitup.js"/>"></script>
<script type="text/javascript" src="<s:url value="/plugins-ui/authoring/editors/markitup/sets/markdown/set.js"/>"></script>

<%-- ===================================================================== --%>
<p class="toplabel"><s:text name="weblogEdit.content" /></p>
<s:textarea name="bean.text" cols="75" rows="25" cssStyle="width: 100%" tabindex="5"/>

<%-- ===================================================================== --%>
<p class="toplabel"><s:text name="weblogEdit.summary" /></p>
<s:textarea name="bean.summary" cols="75" rows="5" cssStyle="width: 100%" tabindex="6"/>

<script language="javascript" type="text/javascript">
mySettings = {
	previewParserPath:	'~/../markdown-preview.jsp',
	onShiftEnter:		{keepDefault:false, openWith:'\n\n'},
	markupSet: [
		{name:'First Level Heading', key:'1', placeHolder:'Your title here...', closeWith:function(markItUp) { return miu.markdownTitle(markItUp, '=') } },
		{name:'Second Level Heading', key:'2', placeHolder:'Your title here...', closeWith:function(markItUp) { return miu.markdownTitle(markItUp, '-') } },
		{name:'Heading 3', key:'3', openWith:'### ', placeHolder:'Your title here...' },
		{name:'Heading 4', key:'4', openWith:'#### ', placeHolder:'Your title here...' },
		{name:'Heading 5', key:'5', openWith:'##### ', placeHolder:'Your title here...' },
		{name:'Heading 6', key:'6', openWith:'###### ', placeHolder:'Your title here...' },
		{separator:'---------------' },		
		{name:'Bold', key:'B', openWith:'**', closeWith:'**'},
		{name:'Italic', key:'I', openWith:'_', closeWith:'_'},
		{separator:'---------------' },
		{name:'Bulleted List', openWith:'- ' },
		{name:'Numeric List', openWith:function(markItUp) {
			return markItUp.line+'. ';
		}},
		{separator:'---------------' },
		{name:'Picture', key:'P', replaceWith:'![[![Alternative text]!]]([![Url:!:http://]!] "[![Title]!]")'},
		{name:'Link', key:'L', openWith:'[', closeWith:']([![Url:!:http://]!] "[![Title]!]")', placeHolder:'Your text to link here...' },
		{separator:'---------------'},	
		{name:'Quotes', openWith:'> '},
		{name:'Code Block / Code', openWith:'(!(\t|!|`)!)', closeWith:'(!(`)!)'},
		{separator:'---------------'},
		{name:'Preview', call:'preview', className:"preview"}
	]
}

// Avoid conflicts with Prototype Library, used through admin UI by Roller
jQuery.noConflict();
// mIu nameSpace to avoid conflict:
// overrides version in sets/markdown/set.js, where $.trim conflicts with Prototype
miu = {
    markdownTitle: function(markItUp, char) {
        heading = '';
        n = jQuery.trim(markItUp.selection||markItUp.placeHolder).length;
        for(i = 0; i < n; i++) {
            heading += char;
        }
        return '\n'+heading;
    }
}
// Apply MarkItUp!
jQuery(document).ready(function()	{
    jQuery('#entry_bean_text').markItUp(mySettings);
    jQuery('#entry_bean_summary').markItUp(mySettings);
});
</script>
