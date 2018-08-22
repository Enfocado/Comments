FROM postgres:alpine

ENV POSTGRES_PASSWORD=password
ENV POSTGRES_DB=comments
ENV POSTGRES_USER=Steven

COPY data /data/
ADD postGres.sql /docker-entrypoint-initdb.d

EXPOSE 5432
