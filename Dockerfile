
FROM openjdk:oracle
ENV SPRING_CONFIG_NAME=file:/app/application.properties
ADD target/com.michaelcgood-0.0.1.jar /app/com.michaelcgood-0.0.1.jar
ADD application.properties /app/application.properties
CMD [ "java","-jar","/app/com.michaelcgood-0.0.1.jar","--spring.config.location=file:/app/application.properties" ]