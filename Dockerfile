FROM openjdk:17-jdk
RUN mkdir -p /usr/application
RUN mkdir -p /opt/backend-assessment/images
COPY target/backend-assessment-*.jar /usr/application/backend-assessment.jar
WORKDIR /usr/application
CMD ["java", "-Dspring.config.location=optional:/config/application.yml", "-Dspring.profiles.active=", "-Duser.timezone=UTC", "-Dserver.port=8080", "-jar", "backend-assessment.jar"]
