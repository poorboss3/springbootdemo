FROM java:openjdk-11-jre-alpine
WORKDIR /home
COPY target/*.jar /home
ENTRYPOINT java -jar *.jar