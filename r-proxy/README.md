## Traefik configuration

- Setup a user and pass combo string for [basic auth](https://doc.traefik.io/traefik-hub/api-gateway/configuration/middleware/http/basic-auth) in [dynamic.yml](traefik-data/configurations/dynamic.yml) using `htpasswd`: `htpasswd -nB -b admin password`