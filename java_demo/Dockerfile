FROM openjdk:8-jre-alpine

EXPOSE 8081

COPY ./target/java_demo-0.0.1-SNAPSHOT.jar /usr/app/
WORKDIR /usr/app

ENTRYPOINT ["java", "-jar", "java-app-1.0-SNAPSHOT.jar"]
