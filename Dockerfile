# Use an official OpenJDK runtime as a parent image
FROM openjdk:11

# Set the working directory in the container
WORKDIR /app

# Copy the application's jar file into the container at /app
COPY target/insure-me-1.0.jar app.jar

# Expose the port the app runs on
EXPOSE 8081

# Run the jar file
ENTRYPOINT ["java", "-jar", "app.jar"]

