# Y0plait's docker configurations

In this repo you will find a collection of docker-compose files that I regularly use on my homeserver. Those configs are not generalized but should do the work if you want to have a starter.

I will do my best to update & maintain them. For your information, I have been using most of these configurations since October-November 2023.

> Note : as all the service are exposed with traefik with a custom subdomain name, you can change the domain (docker.internal & media.internal) according to your needs, juste be sure that you have a DNS record pointing at the docker host (in my case I have an AdGuard Home LXC).

## [Gluetun](./gluetun/)

[Gluetun](https://hub.docker.com/r/qmcgaw/gluetun) is a lightweight VPN client that connects to several VPN providers. In this setup, it is paired with qBittorrent to download Linux ISOs from anywhere in the world.

## [Homepage](./homepage/)

[Homepage](https://gethomepage.dev/latest/) is a neat, simple, and stylish homepage that offers plenty of widgets and customization options. It uses YAML for its configuration (in my setup, but you can use docker labels now).

## [Monitoring](./monitoring/)

These docker containers allow me to be informed if something goes down (uptime-kuma) on my phone (ntfy).

- [Uptime-Kuma](https://uptime.kuma.pet/) is a monitoring tool that monitors the services you configure.
- [Ntfy](https://ntfy.sh/) is a notification service that allows you to send notifications to your devices (Android, iPhone, desktop) with simple yet powerful HTTP requests.
- [Dozzle](https://dozzle.dev/) is a simple monitoring and logging tool for Docker.

## [qBittorrent](./qbittorrent/)

[qBittorrent]() is a torrent client and downloader that allows you to download anything available in its download folder behind GlueTun (in this setup). See the [qBittorrent config file](./qbittorrent/docker-compose.yml) for more details.

## [R-proxy](./r-proxy/)

Contains the configuration files for [Traefik](https://doc.traefik.io/traefik/), a proxy used in this setup to resolve the Docker instances with domain names rather than IP addresses and ports.

## [YAMS](./yams/)

Contains the configuration files for the media stack, which includes the following services:

- [Radarr](https://radarr.video/): A movie management and organization tool.
- [Sonarr](https://sonarr.tv/): A TV show management and organization tool.
- [Prowlarr](https://prowlarr.com/): An indexer manager for Usenet and BitTorrent.
- [Jellyseerr](https://github.com/Fallenbagel/jellyseerr): A tool for managing and organizing movies and tv shows.
- [Bazarr](https://www.bazarr.media/): A subtitle downloader and manager.
- [Jellyfin](https://jellyfin.org): A media server for streaming and organizing media files.
- [Unmanic](https://docs.unmanic.app/): A media library optimization tool.

> Note : Jellyfin and Umanic are commented in the [docker-compose](./yams/docker-compose.yml) file because I migrated them to a separate LXC on proxmox in order to exploit the full potential of hardware transcoding.