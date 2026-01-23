FROM redis:alpine

ENV REDIS_HOST=localhost
ENV REDIS_PASSWORD=password
ENV REDIS_PORT=6379
EXPOSE 6379

VOLUME /data 

RUN ["redis-server", "--appendonly", "yes"]
