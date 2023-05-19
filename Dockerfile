FROM nginx:alpine

COPY ./index.html /usr/src/pages/index.html
COPY ./Caddyfile /etc/caddy/Caddyfile

WORKDIR /usr/src/miniep6
COPY ./caddy_linux_amd64 ./
COPY ./Caddyfile ./

CMD ["/bin/sh", "-c", "chmod +x caddy_linux_amd64 && ./caddy_linux_amd64 run"]