FROM nginx:1.18.0-alpine

ARG PORT=8000
ARG USER=webserver

RUN mkdir /app && \
    adduser --uid 1001 -D $USER && \
    chown -R $USER /app

RUN sed -i -r "s/listen.+;/listen $PORT;/g" /etc/nginx/conf.d/default.conf && \
    sed -i -r "s/root.+;/root \/app;/g" /etc/nginx/conf.d/default.conf && \
    sed -i -r "s/user\s.+;/user $USER;/g" /etc/nginx/nginx.conf

EXPOSE $PORT
