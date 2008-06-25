#!/bin/bash
#
# Basic installation script for this Roller plugin
# ROLLER_INSTALL_DIR=/usr/local/tomcat/webapps/roller ./install.sh
#
if [ -n "${ROLLER_INSTALL_DIR+x}" ]; then
    echo 'Starting install...'
    cp -v dist/roller-markdown.jar $ROLLER_INSTALL_DIR/WEB-INF/lib/
    cp -v lib/markdownj-1.0.2b4-0.3.0.jar $ROLLER_INSTALL_DIR/WEB-INF/lib/
    mkdir -p $ROLLER_INSTALL_DIR/plugins-ui/authoring/editors
    cp -Rv web/editors $ROLLER_INSTALL_DIR/plugins-ui/authoring/
    echo ''
    echo 'Files are copied to your Roller installation directory.'
    echo 'Please edit your roller-custom.properties, and restart the web application.'
else
    echo 'You need to set the ROLLER_INSTALL_DIR environment variable.'
fi
