# docker-postgis

PostGIS Docker image based on [docker.io/postgis/postgis](https://hub.docker.com/r/postgis/postgis), with some extensions added:
- pgrouting

## How to start

```sh
docker run \
    -v dbdata:/var/lib/postgresql/data \
    -p 5432:5432 siticom/postgis
```
