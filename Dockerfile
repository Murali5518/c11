# Use an official OpenJDK runtime as the base image
FROM openjdk:11-jre-slim

# Set the working directory inside the container
WORKDIR /app

# Copy the compiled .jar file from your host machine to the container
COPY target/your-application.jar /app/your-application.jar

# Expose the port the app runs on (if applicable)
EXPOSE 8080

# Run the Java application
CMD ["java", "-jar", "/app/your-application.jar"]
