FROM ollama/ollama

EXPOSE 11434

# CMD ["ollama", "serve"]
ollama pull gemma:2b
