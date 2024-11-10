docker stop ollama
docker rm ollama
docker run -d -e OLLAMA_HOST=0.0.0.0 -v D:/Docker-Shell/ollama/data:/root/.ollama -p 11434:11434 --gpus=all --network common_network --name ollama --restart always   ollama/ollama
