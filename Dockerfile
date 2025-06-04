# Stage 1: Build the application
FROM maven:3.8.5-openjdk-17-slim AS build
WORKDIR /build
COPY pom.xml .
COPY src ./src
RUN mvn clean package -DskipTests

# Stage 2: Create a smaller runtime image
FROM eclipse-temurin:17-jre-alpine
WORKDIR /app
#COPY --from=build /build/target/your-app.jar app.jar
COPY --from=build /build/target/demo-0.0.1-SNAPSHOT.jar app.jar
EXPOSE 8080
ENTRYPOINT ["java", "-jar", "app.jar"]
