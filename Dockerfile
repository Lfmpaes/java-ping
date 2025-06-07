FROM maven:3.9.8-eclipse-temurin-21 AS build

WORKDIR /opt/app

COPY . .

RUN mvn clean package

CMD [ "java", "-jar", "target/app.jar" ]