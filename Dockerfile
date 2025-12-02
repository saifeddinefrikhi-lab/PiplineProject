# Image de base avec JDK 17
FROM openjdk:17-jdk-slim
WORKDIR /app

# Copie du JAR construit dans le conteneur
COPY target/*.jar app.jar

# Exposition du port Spring Boot
EXPOSE 8080

# Commande pour lancer l'application
ENTRYPOINT ["java", "-jar", "app.jar"]
