# FROM openjdk:8
# EXPOSE 8082
# ADD target/petclinic.war petclinic.war
# ENTRYPOINT ["java","-jar","/petclinic.war"]


# Use an official Tomcat runtime as a parent image
FROM openjdk:17

# Maintainer of the image
LABEL maintainer="ugcseynaththenura@gmail.com"

# Add the WAR file to the webapps directory in Tomcat
COPY target/petclinic.war /petclinic.war

# Expose port 8080
EXPOSE 8086

# Run Tomcat
# CMD ["catalina.sh", "run"]
ENTRYPOINT ["java","-jar","/petclinic.war"]

