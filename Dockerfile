FROM openjdk:8-jdk-alpine

WORKDIR /app

COPY HelloWorld.java .

RUN javac HelloWorld.java

CMD ["sh", "-c", "java HelloWorld && tail -f /dev/null"]

