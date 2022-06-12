docker stop face_api
docker rm face_api
docker rmi $(docker images 'face_api' -a -q)
docker build -t face_api .
docker run -d --name face_api -p 9090:9090  --restart unless-stopped face_api