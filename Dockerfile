# Use the official Tomcat base image
FROM tomcat:9.0.1-jre8-alpine

# Remove the default ROOT web application
RUN rm -rf /usr/local/tomcat/webapps/ROOT

# Copy your WAR file to the webapps directory and rename it to ROOT.war
COPY ArthicTrail.war /usr/local/tomcat/webapps/ROOT.war

# Expose the default Tomcat port
EXPOSE 8080

# Start the Tomcat server
CMD ["catalina.sh", "run"]
