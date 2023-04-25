

FROM openjdk:8-jdk-alpine

WORKDIR /app

COPY . .

RUN ./gradlew build

EXPOSE 8080

CMD ["java", "-jar", "build/libs/app.jar"]