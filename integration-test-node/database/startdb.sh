docker volume create pg-data

docker container run -d \
--name postgres \
-p 5432:5432 \
-v $(pwd)/database:/docker-entrypoint-initdb.d \
-v pg-data:/var/lib/postgresql/data \
-e POSTGRES_USER=dbuser \
-e POSTGRES_DB=sample-db \
-e POSTGRES_PASSWORD=password \
postgres:11.5-alpine

sleep 1
echo
echo 

docker container logs postgres



