FROM postgres:15-alpine

# Copie le script d'initialisation
COPY init.sql /docker-entrypoint-initdb.d/

# Optimisations pour Render
ENV POSTGRES_HOST_AUTH_METHOD=scram-sha-256
ENV PGDATA=/var/lib/postgresql/data/pgdata