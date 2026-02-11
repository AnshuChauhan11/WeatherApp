FROM tomcat:10.1-jdk17

# Remove default ROOT app
RUN rm -rf /usr/local/tomcat/webapps/ROOT

# Copy our app as ROOT
COPY ROOT.war /usr/local/tomcat/webapps/

# Render dynamic port fix
CMD ["sh", "-c", "sed -i 's/8080/${PORT}/g' /usr/local/tomcat/conf/server.xml && catalina.sh run"]
