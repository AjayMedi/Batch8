# Use the official Tomcat base image as the starting point
FROM tomcat:9.0

# Remove the default Tomcat webapps to make room for our artifact
RUN rm -rf /usr/local/tomcat/webapps/*

# Copy your WAR file into the Tomcat webapps directory
COPY artifact.war /usr/local/tomcat/webapps/ROOT.war

# Optionally, you can specify an application context path (e.g., /myapp) by renaming the ROOT.war file:
# RUN mv /usr/local/tomcat/webapps/ROOT.war /usr/local/tomcat/webapps/myapp.war

# Expose the default Tomcat port (8080)
EXPOSE 8080

# Start the Tomcat server
CMD ["catalina.sh", "run"]
