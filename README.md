# SmartEdge Deployment

This repository provides scripts and configuration files for deploying **SmartEdge** using Docker Compose.  
Two roles are supported:

- **Smart Node (on-device)**  
- **Orchestrator Node (on-network)**  

---

## 📦 Prerequisites

- [Docker](https://docs.docker.com/get-docker/) ≥ 20.10  
- [Docker Compose](https://docs.docker.com/compose/install/) ≥ 2.x  

---

## 🚀 Deployment

### 1. Start a Smart Node
```bash
./start_smart_node.sh <NODE_ID>
```

Example:
```bash
./start_smart_node.sh node01
```

This will:
- Generate a `.env` file with configuration for a Smart Node  
- Start the **smartedge-on-device** container in Docker Compose  

---

### 2. Start an Orchestrator Node
```bash
./start_orchestrator_node.sh <NODE_ID>
```

Example:
```bash
./start_orchestrator_node.sh orchestrator01
```

This will:
- Generate a `.env` file with configuration for an Orchestrator  
- Start the **smartedge-on-network** container in Docker Compose  

---

### 3. Stop the Deployment
```bash
./stop.sh
```
Stops all services defined in `docker-compose.yml` and removes the `.env` file.

---

### 4. Restart the Deployment
```bash
./restart.sh
```
Reloads the configuration from `.env` and restarts the stack with the same settings.  

---

## ⚙️ Configuration

The `.env` file contains the runtime configuration. Example:

```env
NODE_ID=node01
COORDINATOR=false
ORCHESTRATOR=false
TDD_ENDPOINT=http://192.168.1.175:8080/rdf4j-workbench/repositories/1
```

- `NODE_ID` → unique identifier for the node  
- `COORDINATOR` → set to `true` for Orchestrator mode  
- `ORCHESTRATOR` → set to `true` for Orchestrator mode  
- `TDD_ENDPOINT` → RDF4J repository endpoint  

Scripts automatically generate `.env` based on the role.

---

##Networking

- **smartedge-on-network**  
  - Runs with `network_mode: host`  
  - Directly uses the host’s network (suitable for LAN-wide ROS/DDS discovery)  

- **smartedge-on-device**  
  - Runs with `network_mode: bridge`  
  - Communicates with host via `host.docker.internal`  

---



