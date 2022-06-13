FROM ubuntu

RUN apt-get update
RUN apt-get upgrade -y

RUN apt-get install openjdk-17-jdk -y

COPY build/libs/test-0.0.1-SNAPSHOT.jar test.jar

ENTRYPOINT java -jar test.jar