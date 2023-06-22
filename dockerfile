FROM postgres:latest
ENV POSTGRES_PASSWORD=password
ENV POSTGRES_USER=username
ENV POSTGRES_DB=test
COPY init.sql /docker-entrypoint-initdb.d/init.sql
VOLUME [ "/data_pg" ]