Build and run:

```
docker build -t docker.io/orcunuso/coredns:1.6.9 .
docker run -d -m 128m -p 53:53 -p 53:53/udp -v "$PWD"/config:/etc/coredns --name coredns docker.io/orcunuso/coredns:1.6.9
```
