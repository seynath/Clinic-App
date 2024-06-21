# FROM openjdk:8
# EXPOSE 8082
# ADD target/petclinic.war petclinic.war
# ENTRYPOINT ["java","-jar","/petclinic.war"]


# Use an official Tomcat runtime as a parent image
FROM tomcat:9.0.65-jdk17-openjdk-slim

# Maintainer of the image
LABEL maintainer="your-email@example.com"

# Add the WAR file to the webapps directory in Tomcat
COPY target/petclinic.war /usr/local/tomcat/webapps/

# Expose port 8080
EXPOSE 8086

# Run Tomcat
CMD ["catalina.sh", "run"]
