
FROM openjdk:oracle
# VOLUME /tmp
ADD target/com.michaelcgood-0.0.1.jar com.michaelcgood-0.0.1.jar
EXPOSE 8080
# ENV JAVA_OPTS=""
# ENTRYPOINT ["sh", "-c", "java $JAVA_OPTS -Djava.security.egd=file:/dev/./urandom -jar com.michaelcgood-0.0.1.jar"]
# CMD [ "java","-jar","com.michaelcgood-0.0.1.jar" ]
ENTRYPOINT [ "java", "-Djava.security.egd=file:/dev/./urandom", "-Dspring.profiles.active=container", "-jar", "com.michaelcgood-0.0.1.jar" ]
