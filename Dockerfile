# Use Eclipse Temurin 21 as base image
FROM eclipse-temurin:21-jdk-jammy

WORKDIR /app

# Copy Maven wrapper and pom.xml
COPY mvnw .
COPY .mvn .mvn
COPY pom.xml .

# Copy source code
COPY src src

# Build the application
RUN ./mvnw clean package

# Run the application
ENTRYPOINT ["java","-jar","target/demo-0.0.1-SNAPSHOT.jar"]
