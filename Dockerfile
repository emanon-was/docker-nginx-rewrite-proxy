FROM nginx:1.19.2-alpine

WORKDIR /app

COPY ./docker-entrypoint/requirements.txt /app
RUN apk add --no-cache python3 py3-pip \
  && pip install -r requirements.txt
COPY ./docker-entrypoint /app

RUN ln -s /app/docker-entrypoint.sh /docker-entrypoint.d/01-override-conf.sh


