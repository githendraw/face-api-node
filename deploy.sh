docker build -t face_api . 
docker run -d --name face_api -p 9090:9090  --restart unless-stopped face_api