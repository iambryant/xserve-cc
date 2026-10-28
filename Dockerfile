FROM ghcr.io/gohugoio/hugo:v0.168.0 AS builder
WORKDIR /src
COPY --chown=hugo:hugo . /src
RUN hugo --minify --noTimes

FROM docker.io/library/nginx:1.31.8-alpine
COPY --from=builder /src/public /usr/share/nginx/html
