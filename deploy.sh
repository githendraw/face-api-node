docker stop face_api
docker rm face_api
docker rmi $(docker images 'face_api' -a -q)
docker build --platform linux/amd64 -t face_api .
docker run -d --name face_api --platform linux/amd64 -p 9090:9090  --restart unless-stopped face_api