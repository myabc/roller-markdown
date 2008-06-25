package com.ikonoklastik.roller.business.plugins.entry.markdown;

import com.petebevin.markdown.MarkdownProcessor;
import org.apache.commons.lang.StringEscapeUtils;
import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.apache.roller.weblogger.business.plugins.comment.WeblogEntryCommentPlugin;
import org.apache.roller.weblogger.pojos.WeblogEntryComment;

/**
 * Markdown Comments Plugin for Roller
 *
 * @author alexbcoles
 */
public class MarkdownCommentPlugin implements WeblogEntryCommentPlugin {

    private static final Log log = LogFactory.getLog(MarkdownCommentPlugin.class);

    public static final String PLUGIN_ID = "Markdown";
    public static final String NAME = "Markdown";
    public static final String DESCRIPTION = "Allows the use of the Markdown" +
            " lightweight markup language in weblog comments.";

    private MarkdownProcessor processor = new MarkdownProcessor();

    public String getId() {
        return PLUGIN_ID;
    }

    public String getName() {
        return NAME;
    }

    public String getDescription() {
        return StringEscapeUtils.escapeJavaScript(DESCRIPTION);
    }

    /**
     *
     * @param comment
     * @param str
     * @return
     */
    public String render(final WeblogEntryComment comment, String text) {
        log.debug("starting value:\n" + text);

        String result = processor.markdown(text);
        log.debug("ending value:\n" + result);

        return result;
    }

}
