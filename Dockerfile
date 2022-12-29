FROM openjdk:11
RUN mkdir -p /app
WORKDIR /app
RUN git clone https://github.com/frcalderon/spring-api-gateway.git .
RUN chmod +x mvnw
RUN ./mvnw clean install -DskipTests
EXPOSE 8081
CMD ["java", "-jar", "target/api-gateway-0.0.1-SNAPSHOT.jar"]