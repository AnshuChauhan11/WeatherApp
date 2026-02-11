FROM tomcat:10.1-jdk17

RUN rm -rf /usr/local/tomcat/webapps/ROOT

COPY ROOT.war /usr/local/tomcat/webapps/

CMD ["sh", "-c", "sed -i \"s/port=\\\"8080\\\"/port=\\\"$PORT\\\"/\" /usr/local/tomcat/conf/server.xml && catalina.sh run"]
