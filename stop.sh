#!/bin/bash
set -e

echo "Stopping SmartEdge stack..."

docker compose down

# Optional: remove the generated .env file
if [ -f ".env" ]; then
  rm .env
  echo ".env file removed"
fi

echo "SmartEdge stopped"
