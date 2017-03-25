#!/bin/sh


cp -f ${CONFLUENCE_INSTALL}/conf/server.xml.org　${CONFLUENCE_INSTALL}/conf/server.xml
sed -i -e "4s/%proxyName%/${CONFLUENCE_PROXY_NAME}/" ${CONFLUENCE_INSTALL}/conf/server.xml
sed -i -e "4s/%proxyPort%/${CONFLUENCE_PROXY_PORT}/" ${CONFLUENCE_INSTALL}/conf/server.xml
sed -i -e "4s/%scheme%/${CONFLUENCE_SCHEME}/" ${CONFLUENCE_INSTALL}/conf/server.xml
sed -i -e "4s/%secure%/${CONFLUENCE_SECURE}/" ${CONFLUENCE_INSTALL}/conf/server.xml

./bin/catalina.sh
