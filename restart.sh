#!/bin/bash
set -e

if [ ! -f ".env" ]; then
  echo "No .env file found. Please start with start_smart_node.sh or start_orchestrator_node.sh first."
  exit 1
fi

# Load previous config
source .env

echo "Restarting SmartEdge stack with NODE_ID=${NODE_ID}, COORDINATOR=${COORDINATOR}, ORCHESTRATOR=${ORCHESTRATOR}"

# Stop current stack
docker compose down

# Start again with the same environment
docker compose up -d
