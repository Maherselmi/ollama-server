FROM ollama/ollama:latest

ENV OLLAMA_HOST=0.0.0.0:11434

EXPOSE 11434

ENTRYPOINT ["/bin/sh", "-c"]

CMD ["ollama serve & sleep 15 && ollama pull nomic-embed-text:latest && wait"]