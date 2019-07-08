FROM java:8-jdk
MAINTAINER Eduardo Mioto <eduardo.mioto@gmail.com>

ENV JAVA_HOME              /usr/lib/jvm/java-8-openjdk-amd64
ENV PATH                   $PATH:$JAVA_HOME/bin

WORKDIR /app
COPY ./microservice-access-manager-rest-1.0.0.jar /app/app.jar

CMD ["/bin/sh", "-c", "java -Dspring.profiles.active=dev -jar /app/app.jar"]