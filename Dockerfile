FROM postgres:14

LABEL maintainer=RWCannell
LABEL description="Postgres Image for pg-movies-recommendation-system"
LABEL version="1.0.0"

ENV POSTGRES_DB=pg-mrs-db
ENV POSTGRES_USER=pg-mrs-user
ENV POSTGRES_PASSWORD=pg-mrs-password

RUN mkdir -p /app/datasets

COPY datasets/* /app/datasets

COPY db/init-db.sql /docker-entrypoint-initdb.d/
