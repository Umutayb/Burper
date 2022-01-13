#Burp Security Testing
With a Burp Professional Edition License key, run:

```
docker pull umutayb/burper

docker run -it --rm -h Burper --name Burper \
    -u $(id -u):$(id -g) \
    -v $XSOCK:$XSOCK -v $XAUTH:$XAUTH -e XAUTHORITY=$XAUTH \
    -v $burp_dir -v $burp_conf \
    -p 7450:7450 \
    --env="DISPLAY" \
    umutayb/burper
```
This will download & run a pre-built Docker Image. Once the image is running, simply type in `./burp-rest-api.sh`. This
will start the Burp Suite and ask for your license key. Simply enter your license key and start using it.
