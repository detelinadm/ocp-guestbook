FROM postgres:16

ENV POSTGRES_DB=guestbook
ENV POSTGRES_USER=guestbook
ENV POSTGRES_PASSWORD=password

EXPOSE 5432

VOLUME /var/lib/postgresql/data
