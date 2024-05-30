# Use the official Eclipse Temurin image as the base image
FROM eclipse-temurin:17

# Set the working directory to /fuseki
WORKDIR /fuseki

# Copy the Fuseki .jar file and the entrypoint script to the container
COPY . .

# Expose the Fuseki server port
EXPOSE 3030

# Command to run the JAR file
CMD ["java", "-Xmx1200M", "-jar", "fuseki-server.jar"]
