FROM docker.io/openjdk:8-jdk
ADD target/spring-example-0.0.1-SNAPSHOT.jar //
RUN mkdir /logs
RUN chmod 777 /logs
RUN chmod 777 /
EXPOSE 8080
USER root
CMD java -jar /spring-example-0.0.1-SNAPSHOT.jar