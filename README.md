# docker-postgis

docker image for a postgis database server

## How to start

```sh
docker run \
    -v dbdata:/var/lib/postgresql/data \
    -p 5432:5432 siticom/postgis
```
