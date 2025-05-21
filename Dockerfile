# Use OpenJDK base image
FROM openjdk:17-jdk-slim

LABEL maintainer="Param"

# Set the working directory
WORKDIR /app

# Copy jar file into container
COPY target/*.jar app.jar

# Run the application
ENTRYPOINT ["java", "-jar", "app.jar"]
