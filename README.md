# Usage

## Pull the image 
```
docker pull froulet/docker-logstalgia
```

Or build it from the Dockerfile :
```
docker build . -t froulet/docker-logstalgia
```

## Use logstalgia on a log file
You have to mount the folder containing the image into /app directory. Example :

```
docker run  -i --rm --net='host' --env=DISPLAY -v "$HOME/.Xauthority:/root/.Xauthority:rw" -v $(pwd):/app -w /app froulet/docker-logstalgia logstalgia logfile.log
```

## Use logstalgia from a stream

If you run the container without any option help will be show.

```
ssh -C user@serverip tail -f /var/log/nginx/access.log | docker -i --rm --net='host' --env=DISPLAY -v "$HOME/.Xauthority:/root/.Xauthority:rw" froulet/docker-logstalgia logstalgia --sync
```


# User feedback

If you have any problems with or questions about this Docker image, please contact me through a Github issue.

# Automated build

[https://hub.docker.com/r/froulet/docker-logstalgia/](https://hub.docker.com/r/froulet/docker-logstalgia/)
