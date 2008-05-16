package com.ikonoklastik.roller.plugins.weblogentry.markdown;

import com.petebevin.markdown.MarkdownProcessor;
import org.apache.commons.lang.StringEscapeUtils;
import org.apache.roller.weblogger.business.plugins.entry.WeblogEntryPlugin;
import org.apache.roller.weblogger.pojos.Weblog;
import org.apache.roller.weblogger.pojos.WeblogEntry;
import org.apache.roller.weblogger.util.I18nMessages;

/**
 * Markdown Plugin for Roller
 * 
 * @author alexbcoles
 */
public class MarkdownPlugin implements WeblogEntryPlugin {

    public static final String NAME = "Markdown Plugin";
    public static final String DESCRIPTION = "Allows use of Markdown lightweight" + 
            " markup language in your weblog entries.";
    
    private I18nMessages messages;
    private MarkdownProcessor processor = new MarkdownProcessor();

    public String getName() {
        return NAME;
    }

    public String getDescription() {
        return StringEscapeUtils.escapeJavaScript(DESCRIPTION);
    }

    /**
     * Init.
     * 
     * @param website the website for which we are being invoked (unused here)
     */
    public void init(Weblog website) {
        messages = I18nMessages.getMessages(website.getLocale());
    }

    /**
     * Convert an input string that contains text that uses the Markdown syntax
     * to an output string in HTML format.
     *
     * @param  entry the blog entry (unused here)
     * @param  src   input string that uses Markdown syntax
     * @return output string in HTML format.
     */
    public String render(WeblogEntry entry, String src) {
        String result = processor.markdown(src);
        return result;
    }

}
