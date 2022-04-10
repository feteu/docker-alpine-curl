docker run \
    --detach \
    --name "alpine-curl" \
    --network "docker-blue-green" \
    --volume "/Users/fabio/_projects/docker-alpine-curl/alpine-curl/:/var/tmp/:ro" \
    alpine:latest \
    /bin/sh -c "apk add curl bash && bash /var/tmp/run.bash"