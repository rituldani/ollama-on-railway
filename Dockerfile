FROM ollama/ollama

RUN ollama pull gemma:2b

EXPOSE 11434

# CMD ["ollama", "serve"]

