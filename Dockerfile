# Use a lightweight JDK 17 image
FROM eclipse-temurin:17-jdk

# Set working directory
WORKDIR /app

# Copy the built JAR file into the container
COPY ./target/gestion-station-ski-1.0.jar app.jar

# Expose port (optional, if your app runs on a specific port)
EXPOSE 8089

# Command to run the JAR file
CMD ["java", "-jar", "app.jar"]
