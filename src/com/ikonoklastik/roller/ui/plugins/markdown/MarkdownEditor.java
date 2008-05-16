package com.ikonoklastik.roller.ui.plugins.markdown;

import org.apache.roller.weblogger.ui.core.plugins.WeblogEntryEditor;

/**
 *
 * @author alexbcoles
 */
public class MarkdownEditor implements WeblogEntryEditor {
    
    public MarkdownEditor() {
    }    
    
    public String getId() {
        return "editor-markdown.jsp";
    }
    
    public String getName() {
        return "editor.markdown.name";
    }
    
    public String getJspPage() {
        return "/roller-ui/authoring/editors/editor-markdown.jsp";
    }
    
}

