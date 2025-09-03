FROM tomcat:11.1-jdk24
RUN rm -rf /usr/local/tomcat/webapps/*
COPY BTtuan2.war /usr/local/tomcat/webapps/ROOT.war
EXPOSE 8080
CMD ["catalina.sh", "run"]
