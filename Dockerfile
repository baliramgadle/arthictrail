# Use the official Tomcat base image
FROM tomcat:9.0-jdk11

# Copy the WAR file to the webapps directory
COPY ArthicTrail.war /usr/local/tomcat/webapps/

# Expose port 8080
EXPOSE 8080

# Start Tomcat server
CMD ["catalina.sh", "run"]
