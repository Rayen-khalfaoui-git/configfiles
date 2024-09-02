# Start with a base image containing Java runtime
FROM openjdk:17-jdk-slim

# Set the working directory inside the container
WORKDIR /app

# Copy the JAR file from the target directory into the container
COPY target/library-0.0.6.jar app.jar

# Expose the port the application will run on
EXPOSE 9100

# Command to run the JAR file
ENTRYPOINT ["java", "-jar", "app.jar"]
