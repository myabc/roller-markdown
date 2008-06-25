Roller Markdown Plugin
======================

The Roller Markdown Plugin enables [Markdown syntax][markdown] in 
[Roller][roller] blog entries, and bundles the [markItUp! editor][markitup] to 
provide visual Markdown editing.

Prerequisites
-------------

* JDK 1.5 or greater.
* Roller 4.0 or greater.

Copyright and Licensing
-----------------------

The plugin source code is released under an **MIT License**.

> Copyright 2008 Alex Coles.

A copy of the License may be found in the MIT-LICENSE file.

Additionally, this plugin bundles the following software:

* [MarkdownJ][markdownj] is licensed under a [BSD License][bsd-license].
* [markItUp!][markitup] is dual-licensed under both MIT and GPL Licenses.
* [jQuery][jquery] is dual-licensed under both MIT and GPL Licenses.

Installation
------------

### Install files

You can use the installer script provided to perform steps 1-3 for you:
    `ROLLER_INSTALL_DIR=/usr/local/tomcat/webapps/roller ./install.sh`

1.  Copy the following libraries to your `ROLLER_INSTALL_DIR/WEB-INF/lib`:
    *  `markdownj-1.0.2b4-0.3.0.jar`: _the MarkdownJ library_
    *  `roller-markdown.jar`: _this plugin_
    
2.  Create a new directory for editor plugins in your `ROLLER_INSTALL_DIR`:  
    `mkdir -p plugins-ui/authoring/editors`
    
3.  Copy the contents of this plugin web/editors directory to your newly created
    directory for editor plugins:  
    `cp -R web/editors $ROLLER_INSTALL_DIR/plugins-ui/authoring/`

### Configuration

4.  Edit your `roller-custom.properties` with your favourite editor. If you
    installed Roller to Tomcat for example, your Roller configuration will
    most likely be found in `$CATALINA_HOME/common/classes/roller-custom.properties`.

5.  Thoroughly read the Roller Install Guide which lists all default properties.
    However, for convenience the default properties for Roller 4.0 Release are
    listed in these instructions.  
    Change the properties as listed below:
    
    **Default:**  
    `plugins.page=\
    org.apache.roller.weblogger.business.plugins.entry.ConvertLineBreaksPlugin \
    ,org.apache.roller.weblogger.business.plugins.entry.TopicTagPlugin \
    ,org.apache.roller.weblogger.business.plugins.entry.ObfuscateEmailPlugin \
    ,org.apache.roller.weblogger.business.plugins.entry.SmileysPlugin`

    `plugins.weblogEntryEditors=\
    org.apache.roller.weblogger.ui.core.plugins.TextEditor,\
    org.apache.roller.weblogger.ui.core.plugins.XinhaEditor`
    
    `plugins.defaultEditor=editor-text.jsp`

    **Customized:**  
    `plugins.page=\
    com.ikonoklastik.roller.business.plugins.entry.markdown.MarkdownPlugin \
    ,org.apache.roller.weblogger.business.plugins.entry.ConvertLineBreaksPlugin \
    ,org.apache.roller.weblogger.business.plugins.entry.TopicTagPlugin \
    ,org.apache.roller.weblogger.business.plugins.entry.ObfuscateEmailPlugin \
    ,org.apache.roller.weblogger.business.plugins.entry.SmileysPlugin`
    
    `plugins.weblogEntryEditors=\
    com.ikonoklastik.roller.ui.plugins.markdown.MarkdownEditor,\
    org.apache.roller.weblogger.ui.core.plugins.TextEditor`

    *If you wish to make the Markdown editor your default*:
    `plugins.defaultEditor=editor-markdown.jsp`

6.  Restart your Roller installation (the web application, rather than the
    server) to begin using the plugin.

### Building the Source

This plugin was developed with the NetBeans IDE. A NetBeans project is included
along with the source code.

To compile the Roller Markdown plugin, you'll need to download either the Roller
source or binaries:

    wget http://apache.mult	idist.com/roller/roller-4/v4.0.0/bin/apache-roller-4.0.zip
    unzip apache-roller-4.0.zip

The plugin has the following dependencies, which you will need to include in
your compile path:

* roller-core
* roller-business
* roller-web
* commons-lang
* commons-logging

_More detailed instructions for building the source will be added._

Support
-------

Use is at your own risk. Comments, feedback and patches are welcome though. You
can contact the developer at <alex@alexcolesportfolio.com>.


[roller]: http://rollerweblogger.org
[markdown]: http://daringfireball.net/projects/markdown/
[markdownj]: http://sourceforge.net/projects/markdownj/
[markitup]: http://markitup.jaysalvat.com
[jquery]: http://jquery.com/
[bsd-license]: http://www.opensource.org/licenses/bsd-license.php
