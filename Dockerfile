FROM openjdk:24-jdk
RUN apt-get update && apt-get install -y wget
RUN wget https://downloads.apache.org/tomcat/tomcat-10/v10.1.24/bin/apache-tomcat-10.1.24.tar.gz \
    && tar xzf apache-tomcat-10.1.24.tar.gz -C /usr/local/ \
    && mv /usr/local/apache-tomcat-10.1.24 /usr/local/tomcat
COPY BTuan2.war /usr/local/tomcat/webapps/ROOT.war
EXPOSE 8080
CMD ["/usr/local/tomcat/bin/catalina.sh", "run"]
