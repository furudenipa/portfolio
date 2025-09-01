FROM klakegg/hugo:0.101.0-ext-alpine AS build
WORKDIR /src

COPY . .
ENV HUGO_ENV=production
RUN hugo --minify 

FROM nginxinc/nginx-unprivileged:alpine
COPY --chown=101:101 --from=build /src/public /usr/share/nginx/html
EXPOSE 8080