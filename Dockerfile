# Use the official Tomcat 9 image as the base
FROM tomcat:9.0

# Set the working directory inside the container to the Tomcat webapps directory
WORKDIR /usr/local/tomcat/webapps/ROOT

# Copy the index.html to the ROOT directory (default app directory for Tomcat)
COPY index1.html .

# Expose the default Tomcat port
EXPOSE 8080

# Start the Tomcat server
CMD ["catalina.sh", "run"]
