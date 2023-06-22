FROM postgres:latest
ENV POSTGRES_PASSWORD=0000
ENV POSTGRES_USER=name
ENV POSTGRES_DB=test
COPY init.sql /docker-entrypoint-initdb.d/init.sql