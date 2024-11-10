docker stop neo4j
docker rm neo4j
docker run --restart always --name neo4j -v D:/Docker-Shell/neo4j/data:/data -v D:/Docker-Shell/neo4j/plugins:/plugins -p 7475:7474 -p 7688:7687 -e 'NEO4J_PLUGINS=["apoc"]' -e NEO4J_AUTH=none -d neo4j:4.4.38
