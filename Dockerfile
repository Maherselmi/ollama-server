FROM ollama/ollama:latest

EXPOSE 11434

CMD ollama serve & sleep 20 && ollama pull nomic-embed-text && wait
