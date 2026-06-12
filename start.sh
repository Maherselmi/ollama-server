#!/bin/bash
set -e

# Démarrer Ollama en arrière-plan
ollama serve &
OLLAMA_PID=$!

# Attendre que Ollama soit prêt
echo "Attente démarrage Ollama..."
sleep 20

# Télécharger le modèle
echo "Téléchargement nomic-embed-text..."
ollama pull nomic-embed-text

echo "Ollama prêt ✅"

# Garder le processus en vie
wait $OLLAMA_PID
