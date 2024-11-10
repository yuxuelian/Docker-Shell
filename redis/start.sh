docker stop redis
docker rm redis
docker run -d --name redis --network common_network -v D:/Docker-Shell/redis/redis.conf:/etc/redis/redis.conf -v D:/Docker-Shell/redis/data:/data -p 6379:6379 --restart always redis:7.4.0

