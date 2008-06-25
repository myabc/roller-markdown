<%-- plugins-ui/authoring/editors/markdown-preview.jsp --%>
<jsp:directive.page import="com.petebevin.markdown.MarkdownProcessor"/>

<%
String postData = request.getParameter("data");
String html = "";

if (postData != null) {
    MarkdownProcessor processor = new MarkdownProcessor();

    try {
        postData = new String(postData.getBytes(), request.getCharacterEncoding());
    } catch(java.io.UnsupportedEncodingException ex){
        out.println(ex);
    }
    html = processor.markdown(postData);
}
%>

<%= html %>