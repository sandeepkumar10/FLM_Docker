FROM mysql:8.4

LABEL maintainer="Sandeep Kumar"
LABEL description="MySQL database for upcoming TFI movies"

ENV MYSQL_ROOT_PASSWORD=Devops@123
ENV MYSQL_DATABASE=TFIMovies

EXPOSE 3306

COPY init.sql /docker-entrypoint-initdb.d/