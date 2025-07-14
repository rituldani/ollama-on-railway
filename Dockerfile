# FROM ollama/ollama

# RUN ollama pull gemma:2b

# EXPOSE 11434

# CMD /bin/sh -c "ollama serve & sleep 5 && ollama pull gemma:2b && wait"
# CMD ["ollama", "serve"]

# FROM ubuntu:22.04

# # Install curl and ollama
# RUN apt-get update && \
#     apt-get install -y curl gnupg && \
#     curl -fsSL https://ollama.com/install.sh | sh

# # Expose Ollama API port
# EXPOSE 11434

# # Pull the model at container start
# CMD /bin/sh -c "ollama serve & sleep 5 && ollama pull gemma:2b && tail -f /dev/null"

FROM ubuntu:22.04

# Install dependencies and Ollama
RUN apt-get update && apt-get install -y curl gnupg && \
    curl -fsSL https://ollama.com/install.sh | sh

# Expose the port Ollama uses
EXPOSE 11434

# Set environment variable to allow external access
ENV OLLAMA_HOST=0.0.0.0:11434

# Start the Ollama server
CMD ["ollama", "serve"]
