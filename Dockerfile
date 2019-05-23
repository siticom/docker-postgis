FROM postgres:11.3

ARG POSTGIS_MAJOR="2.5"
ARG POSTGIS_VERSION="2.5.2+dfsg-1~exp1.pgdg90+1"

LABEL maintainer="Lukas Steiner <lukas.steiner@siticom.de>"
LABEL version="${POSTGIS_VERSION}"

RUN apt-get update \
    && apt-get install -y --no-install-recommends \
        postgresql-${PG_MAJOR}-postgis-${POSTGIS_MAJOR}=${POSTGIS_VERSION} \
        postgresql-${PG_MAJOR}-postgis-${POSTGIS_MAJOR}-scripts=${POSTGIS_VERSION} \
        postgis=${POSTGIS_VERSION} \
    && apt-get clean cache

COPY initdb-postgis.sh /docker-entrypoint-initdb.d/postgis.sh
COPY update-postgis.sh /usr/local/bin
