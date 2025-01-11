#!/bin/bash

# Définir variables
GITHUB_USERNAME=$1
GITHUB_TOKEN=$2

# Authentifiez-vous auprès de GitHub Container Registry
echo $GITHUB_TOKEN | docker login ghcr.io -u $GITHUB_USERNAME --password-stdin
if [ $? -ne 0 ]; then
  echo "Erreur : connexion à GitHub Container Registry a échoué"
  exit 1
fi

# Arrêter et supprimer les services via Docker Compose
docker-compose down --volumes --rmi all

# Puller et exécuter images via Docker Compose
docker-compose up -d
if [ $? -ne 0 ]; then
  echo "Erreur : exécution Docker Compose a échoué"
  exit 1
fi

# Se déconnecter de GitHub Container Registry
docker logout ghcr.io

echo "Les services ont été démarrés avec succès via Docker Compose"
