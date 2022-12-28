FROM openjdk:11
RUN mkdir -p /app
WORKDIR /app
RUN git clone https://github.com/frcalderon/spring-api-gateway.git .
RUN chmod +x mvnw
RUN ./mvnw clean install
EXPOSE 8080
CMD ["java", "-jar", "api-gateway-0.0.1-SNAPSHOT.jar"]