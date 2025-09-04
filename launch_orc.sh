NODE_ID=$1

echo "NODE_ID=$1" > .env
echo "COORDINATOR=true" >> .env
echo "ORCHESTRATOR=true" >> .env
echo "TDD_ENDPOINT=http://192.168.1.175:8080/rdf4j-workbench/repositories/1" >> .env

docker compose up