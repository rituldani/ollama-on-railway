FROM ollama/ollama

# RUN ollama pull gemma:2b

EXPOSE 11434

CMD /bin/sh -c "ollama serve & sleep 5 && ollama pull gemma:2b && wait"
# CMD ["ollama", "serve"]

