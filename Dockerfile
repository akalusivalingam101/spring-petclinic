FROM openjdk:8-jdk-alpine
ARG JAR_FILE=target/spring-petclinic-jfrog-2.6.0-SNAPSHOT.jar
COPY ${JAR_FILE} app.jar
ENTRYPOINT ["java","-jar","/app.jar"]
