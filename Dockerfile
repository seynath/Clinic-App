# FROM openjdk:8
# EXPOSE 8082
# ADD target/petclinic.war petclinic.war
# ENTRYPOINT ["java","-jar","/petclinic.war"]


# # Use an official Tomcat runtime as a parent image
# FROM openjdk:17

# # Maintainer of the image
# LABEL maintainer="ugcseynaththenura@gmail.com"

# # Add the WAR file to the webapps directory in Tomcat
# COPY target/petclinic.war /petclinic.war

# # Expose port 8080
# EXPOSE 8086

# # Run Tomcat
# # CMD ["catalina.sh", "run"]
# ENTRYPOINT ["java","-jar","/petclinic.war"]



# Use Tomcat image as base
FROM tomcat:9.0

# Maintainer of the image
LABEL maintainer="ugcseynaththenura@gmail.com"

# Copy the WAR file to Tomcat's webapps directory
COPY target/petclinic.war /usr/local/tomcat/webapps/

# Expose port 8080 (Tomcat's default)
EXPOSE 8080

# Tomcat automatically runs when the container starts, no need to specify CMD or ENTRYPOINT

