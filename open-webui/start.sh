# 如果报错 关闭VPN
docker stop open-webui
docker rm open-webui
# -e OLLAMA_BASE_URL=http://127.0.0.1:11434 

# --add-host=host.docker.internal:host-gateway 必须加上这个后才可以连接
docker run -d -p 3000:8080 --gpus all --add-host=host.docker.internal:host-gateway -v open-webui:/app/backend/data --name open-webui --restart always ghcr.io/open-webui/open-webui:cuda
