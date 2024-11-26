FROM maven:3.8.6-openjdk-11 AS build
ARG SERVICE_NAME

WORKDIR /app


COPY ${SERVICE_NAME}/pom.xml .
COPY ${SERVICE_NAME}/src ./src

RUN mvn clean package -DskipTests


FROM openjdk:11-jre-slim

WORKDIR /app

COPY --from=build /app/target/*.jar app.jar

CMD ["java", "-jar", "app.jar"]
