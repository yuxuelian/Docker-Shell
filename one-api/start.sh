docker stop one-api
docker rm one-api
docker run --name one-api -d --restart always -p 3010:3000 -e SQL_DSN="root:@tcp(mysql:3306)/oneapi" -e TZ=Asia/Shanghai --network common_network -v D:/Docker-Shell/one-api/data:/data justsong/one-api

