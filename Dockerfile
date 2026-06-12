FROM ollama/ollama:latest

EXPOSE 11434

SHELL ["/bin/bash", "-c"]

RUN apt-get update && apt-get install -y curl

RUN ollama serve & sleep 15 && ollama pull nomic-embed-text

CMD ["ollama", "serve"]
