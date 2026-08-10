FROM tomcat:9.0.120-jre21-temurin

LABEL maintainer="Sandeep Kumar"
LABEL description="This is an E-Commerce application running on Apache Tomcat"

WORKDIR /usr/local/tomcat/webapps

RUN rm -rf ./*

COPY target/*.war ROOT.war

EXPOSE 8080

CMD ["catalina.sh", "run"]