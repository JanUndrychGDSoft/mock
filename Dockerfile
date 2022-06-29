FROM ubuntu

RUN apt-get update
RUN apt-get upgrade -y
RUN apt-get update

RUN apt-get install openjdk-17-jdk -y
RUN apt-get install curl -y

HEALTHCHECK CMD curl -f -X GET http://localhost:8080/actuator/health

COPY build/libs/test-0.0.1-SNAPSHOT.jar test.jar

ENTRYPOINT java -jar test.jar