FROM tomcat:10.1-jdk17

# Remove default ROOT app
RUN rm -rf /usr/local/tomcat/webapps/ROOT

# Copy your WAR as ROOT
COPY ROOT.war /usr/local/tomcat/webapps/

# Start Tomcat on Render dynamic PORT
CMD ["sh", "-c", "sed -i \"s/port=\\\"8080\\\"/port=\\\"$PORT\\\"/\" /usr/local/tomcat/conf/server.xml && catalina.sh run"]
