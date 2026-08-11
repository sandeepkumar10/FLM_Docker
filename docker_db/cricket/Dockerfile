FROM mysql:8.4

LABEL maintainer="Sandeep Kumar"
LABEL description="MySQL database for Indian Cricket Batters"

ENV MYSQL_ROOT_PASSWORD_FILE=/run/secrets/mysql-root
ENV MYSQL_DATABASE=ICTBatters

EXPOSE 3306

COPY init.sql /docker-entrypoint-initdb.d/