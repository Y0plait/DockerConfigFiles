## qBittorrent

- Change the NAS_PATH in [.env](.env) to the path of the folder that contains all the medias.
- Beware that the qBittorrent instance is behind gluetun (VPN client), thus all the downloads are made behind the VPN. 
- The WebUI is accessible with the port 6011

> ⚠️ The first time you start qBittorrent you will have to output the docker logs to see the default generated password. To do so : `docker logs qbittorrent`