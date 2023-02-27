FROM tomcat:9.0-alpine

COPY /target/addressbook.war /usr/local/tomcat/webapps/


EXPOSE 8080

CMD ["catalina.sh","run"]
