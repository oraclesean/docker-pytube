# docker-pytube
A simple Docker container for running pytube.

# Build it
Pull the Dockerfile and build an image:
```
docker build -t pytube .
```

# Run it
Navigate to the directory where you want the video downloaded, then run the image with the following command:

```
docker run --rm -v $PWD:/pytube pytube https://youtube.com/watch?v=somevideo
```

* `--rm`: Removes the container on completion
* `-v $PWD:/pytube`: Associates the container's working download directory (`/pytube`) with the current working directory (`$PWD`) on the host.

You can use a fixed directory path in place of `$PWD` if you like.
