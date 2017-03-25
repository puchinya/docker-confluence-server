#!/bin/sh

cp -f ${CONFLUENCE_INSTALL}/conf/server.xml.org ${CONFLUENCE_INSTALL}/conf/server.xml
sed -i -e "s/%proxyName%/${CONFLUENCE_PROXY_NAME}/g" ${CONFLUENCE_INSTALL}/conf/server.xml
sed -i -e "s/%proxyPort%/${CONFLUENCE_PROXY_PORT}/g" ${CONFLUENCE_INSTALL}/conf/server.xml
sed -i -e "s/%scheme%/${CONFLUENCE_SCHEME}/g" ${CONFLUENCE_INSTALL}/conf/server.xml
sed -i -e "s/%secure%/${CONFLUENCE_SECURE}/g" ${CONFLUENCE_INSTALL}/conf/server.xml

${CONFLUENCE_INSTALL}/bin/catalina.sh run
