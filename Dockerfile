FROM ghcr.io/gohugoio/hugo:v0.168.0 AS builder
WORKDIR /src
COPY --chown=hugo:hugo . /src
RUN hugo --minify --noTimes

FROM nginx:1.31.6-alpine
COPY --from=builder /src/public /usr/share/nginx/html
