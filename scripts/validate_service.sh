#!/bin/bash

# Parámetros
CLUSTER_NAME="legal-cluster"
SERVICE_NAME="legal-service"
TIMEOUT=300 # Tiempo de espera en segundos para verificar el estado del servicio

# Esperar a que el servicio ECS esté en estado 'ACTIVE'
echo "Waiting for the ECS service to stabilize..."
END_TIME=$((SECONDS+TIMEOUT))

while [ $SECONDS -lt $END_TIME ]; do
  STATUS=$(aws ecs describe-services --cluster $CLUSTER_NAME --services $SERVICE_NAME --query "services[0].status" --output text)

  if [[ "$STATUS" == "ACTIVE" ]]; then
    echo "Service is ACTIVE and healthy."
    exit 0
  fi

  echo "Service status is $STATUS. Waiting for it to become ACTIVE..."
  sleep 10
done

echo "Service did not become ACTIVE within the timeout period."
exit 1
