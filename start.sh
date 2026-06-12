#!/bin/sh

# Démarrer Ollama en arrière-plan
ollama serve &

# Attendre que le serveur soit prêt
sleep 10

# Télécharger le modèle
ollama pull nomic-embed-text:latest

echo "Model loaded successfully"

# Garder le serveur actif
wait
