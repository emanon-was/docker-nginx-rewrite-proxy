FROM nginx:1.19.2-alpine
RUN RUN apk add --no-cache python python-pip
COPY ./docker-entrypoint /app
RUN ln -s /docker-entrypoint.d/30-override-conf.sh /app/docker-entrypoint.sh
WORKDIR /app

