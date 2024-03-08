FROM docker.io/postgis/postgis:14-3.4

LABEL maintainer="Lukas Steiner <lukas.steiner@siticom.de>"

RUN apt-get update \
    && apt-get install -y --no-install-recommends \
    postgresql-$PG_MAJOR-pgrouting \
    postgresql-$PG_MAJOR-pgrouting-scripts \
    && rm -rf /var/lib/apt/lists/*
