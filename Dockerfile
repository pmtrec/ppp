FROM postgres:15-alpine

ENV POSTGRES_USER=pmtuser
ENV POSTGRES_PASSWORD=pmtpass
ENV POSTGRES_DB=pmtdb

COPY init.sql /docker-entrypoint-initdb.d/
