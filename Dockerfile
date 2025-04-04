FROM openjdk:17-jdk-slim

WORKDIR /app

COPY ../rec/team-dung-0.0.1-SNAPSHOT.jar app.jar
#1122
EXPOSE 8081

ENTRYPOINT ["java", "-jar", "app.jar"]