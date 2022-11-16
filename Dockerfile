FROM openjdk:8
RUN mkdir -p /app

COPY target/quarkus-app/lib/ /app/lib/
COPY target/quarkus-app/*.jar /app/
COPY target/quarkus-app/app/ /app/app/
COPY target/quarkus-app/quarkus/ /app/quarkus/

COPY target/sidekick-demo-todo-app-java.jar /app/sidekick-demo-todo-app-java.jar
COPY sidekick-agent-bootstrap.jar /app/sidekick-agent-bootstrap.jar

WORKDIR /app

EXPOSE 8080

ENV SIDEKICK_AGENT_APPLICATION_NAME=sidekick-quarkus-demo-app
ENV SIDEKICK_AGENT_APPLICATION_VERSION=1.0.0
ENV SIDEKICK_AGENT_APPLICATION_STAGE=demo
ENTRYPOINT [ "java", "-javaagent:sidekick-agent-bootstrap.jar", "-jar", "quarkus-run.jar" ]