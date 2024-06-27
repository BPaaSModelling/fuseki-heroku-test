# Use the official Eclipse Temurin image as the base image
FROM eclipse-temurin:17

# Set the working directory to /fuseki
WORKDIR /fuseki

# Copy the Fuseki .jar file and the entrypoint script to the container
COPY . .

# Expose the Fuseki server port
EXPOSE 3030

# Ensure proper permissions for the Fuseki files
RUN chmod +x fuseki-server.jar

# Command to run the JAR file
CMD ["java", "-Xms2g", "-Xmx6g", "-jar", "fuseki-server.jar"]
