FROM eclipse-temurin:21-jdk-alpine
WORKDIR /app
COPY build/libs/agendador-tarefas-usuario-0.0.1-SNAPSHOT.jar /app/agendador-tarefas-usuario.jar
EXPOSE 8080
CMD ["java", "-jar", "/app/agendador-tarefas-usuario.jar"]