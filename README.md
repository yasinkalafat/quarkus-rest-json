# sidekick-demo-quarkus-app

## Running quarkus app with sidekick agent locally
Quarkus guide: https://quarkus.io/guides/rest-json

```

git clone https://github.com/runsidekick/sidekick-demo-quarkus-app.git
cd sidekick-demo-quarkus-app
./mvnw package
java -javaagent:sidekick-agent-bootstrap.jar -Dsidekick.apikey=<YOUR-API-KEY> -Dsidekick.agent.application.name=sidekick-demo-quarkus-app -Dsidekick.agent.application.stage=demo -Dsidekick.agent.application.version=1.0.0 -jar target/*.jar target/quarkus-app/quarkus-run.jar
```

You can then access todo app here: http://localhost:8080/
