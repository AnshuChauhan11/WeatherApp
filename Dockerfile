FROM tomcat:10.1-jdk17
COPY ROOT.war /usr/local/tomcat/webapps/
EXPOSE 8080
