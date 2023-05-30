docker-compose down
docker rmi srcs_wordpress
docker-compose up -d --build
sudo docker exec -it wordpress bash