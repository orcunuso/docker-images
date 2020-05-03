Build and run:

```
docker build -t docker.io/orcunuso/coredns:1.6.9 .
docker run -m 128m -P -v "$PWD"/config:/etc/coredns --name coredns docker.io/orcunuso/coredns:1.6.9
```
