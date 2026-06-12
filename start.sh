#!/bin/bash
ollama serve &
sleep 15
ollama pull nomic-embed-text
tail -f /dev/null
