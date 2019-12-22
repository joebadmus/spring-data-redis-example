FROM openjdk:8-jdk-alpine
VOLUME /tmp
ADD target/com.michaelcgood-0.0.1.jar com.michaelcgood-0.0.1.jar
ENV JAVA_OPTS=""
ENTRYPOINT [ "sh", "-c", "java $JAVA_OPTS - Djava.security.egd=file:/dev/./urandom -jar /com.michaelcgood-0.0.1.jar" ]