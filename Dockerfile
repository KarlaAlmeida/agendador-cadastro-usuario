FROM gradle:8.14.3-jdk21-alpine AS build
WORKDIR /app
COPY . .
RUN gradle build -x test --no-daemon

FROM eclipse-temurin:21-jdk-alpine
WORKDIR /app
COPY --from=build /app/build/libs/agendador-tarefas-usuario-0.0.1-SNAPSHOT.jar /app/agendador-tarefas-usuario.jar
EXPOSE 8080
CMD ["java", "-jar", "/app/agendador-tarefas-usuario.jar"]