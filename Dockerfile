FROM tomcat:8-jre8

LABEL maintainer="shiakahmed53"

# Remove default ROOT app (optional but clean)
RUN rm -rf /usr/local/tomcat/webapps/ROOT

# Copy the newly built WAR file into Tomcat
COPY target/*.war /usr/local/tomcat/webapps/dockeransible.war

EXPOSE 8080

CMD ["catalina.sh", "run"]
