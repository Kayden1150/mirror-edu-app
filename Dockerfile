FROM nginx:alpine

ENV PORT=8080 \
    NGINX_ENVSUBST_FILTER="^PORT$"

COPY nginx.conf.template /etc/nginx/templates/default.conf.template
COPY index.html /usr/share/nginx/html/index.html
COPY apple-touch-icon.png /usr/share/nginx/html/apple-touch-icon.png
COPY icon-192.png /usr/share/nginx/html/icon-192.png
COPY icon-512.png /usr/share/nginx/html/icon-512.png
COPY manifest.webmanifest /usr/share/nginx/html/manifest.webmanifest

EXPOSE 8080
