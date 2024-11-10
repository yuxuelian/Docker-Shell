docker stop mysql
docker rm mysql
docker run   --name mysql   -e MYSQL_ALLOW_EMPTY_PASSWORD=yes   -v ~/docker/mysql/data:/var/lib/mysql   -p 3306:3306   --restart always   --network common_network   -d   mysql:5.7.44
