# Usage

    docker-compose build
    docker-compose up

Start the client

    ruby client.rb

Observe it working, then you can introduce corruption.

Grab the network interface:

    docker network ls

```
$ docker network ls
NETWORK ID          NAME                    DRIVER              SCOPE
ff48140a76fb        checksumcheck_default   bridge              local
```

Introduce corruption:
  
    tc qdisc add dev br-ff48140a76fb root netem corrupt 100.0%

And of course, remove it again:
  
    tc qdisc del dev br-ff48140a76fb root netem corrupt 100.0%
