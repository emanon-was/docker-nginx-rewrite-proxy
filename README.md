# docker-nginx-rewrite-proxy

## How to use this image

### Start a `nginx-rewrite-proxy` instance

Starting a Digdag instance is simple:

```shell
$ docker run -d --name some-nginx \
    -e 'LOCATION=/api'
    -e 'PROXY_PASS=http://example.com'
    nginx-rewrite-proxy:tag
```


