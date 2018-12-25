FROM openjdk:8-jre-alpine

COPY target/VanillaVotifier-*.jar /usr/votifier/VanillaVotifier.jar
WORKDIR /usr/votifier

ENTRYPOINT ["java", "-jar", "VanillaVotifier.jar"]
