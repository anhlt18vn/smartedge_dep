#!/bin/bash
set -e

if [ -z "$1" ]; then
  echo "Usage: $0 <NODE_ID>"
  exit 1
fi

NODE_ID=$1

cat > .env <<EOF
NODE_ID=${NODE_ID}
COORDINATOR=true
ORCHESTRATOR=true
TDD_ENDPOINT=http://192.168.1.175:8080/rdf4j-workbench/repositories/1
EOF

docker compose up 
