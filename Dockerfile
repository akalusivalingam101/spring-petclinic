FROM openjdk:8-jdk-alpine
ARG JAR_FILE=target/spring-petclinic-jfrog-2.6.0-SNAPSHOT.jar
ENTRYPOINT ["java","-jar",JAR_FILE]
