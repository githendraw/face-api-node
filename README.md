By default the server runs at port `9000` and exposes `/detect` for receiving a json object like following
image is base 64
```
{
    "image":"/9j/4AAQSkZJRgABA....the"
}
```

We also have `/detect-matches` for detecting matching faces, it accepts following request 
image is base 64
```
{
    "image":"/9j/4AAQSkZJRgABA....the" // The source image
    "faces": [
        {
            "name":"Agustin",
            "image":"/9j/4AAQSkZJRgABA....the" // The face image
        }
    ]
}
```

It is easy to play with `req.body.image` if you want to handle your own logic. Just call `util.detect` and pass in the buffer of the image.
```

run docker with
```
docker build --platform linux/amd64 -t face_api . 

```
docker run -d --name face_api -p 9000:9000 --platform linux/amd64  --restart unless-stopped face_api