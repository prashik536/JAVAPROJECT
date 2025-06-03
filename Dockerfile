FROM eclipse-temurin:17-jre-alpine

WORKDIR /app

# Copy your built JAR into the image
COPY target/demo-0.0.1-SNAPSHOT.jar app.jar

# Expose port 8080
EXPOSE 8080

# Run the jar
ENTRYPOINT ["java", "-jar", "app.jar"]
