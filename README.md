Quarkus guide: https://quarkus.io/guides/rest-json

```
./mvnw package

java -javaagent:sidekick-agent-bootstrap.jar -DSIDEKICK.AGENT.APPLICATION.NAME=sidekick_quarkus_test -DSIDEKICK.APIKEY=<api-key> -jar target/quarkus-app/quarkus-run.jar
```
