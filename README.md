# My Beloved Inspiron: Personal Homelab & Media Server

Welcome to my homelab repository! This project documents my journey in building and managing a self-hosted infrastructure using Docker, running on a repurposed Dell Inspiron laptop. 

This repository contains my `docker-compose` files, custom configurations, and sysadmin automation scripts.

## Hardware & OS
* **Machine:** Dell Inspiron 14-3467
* **OS:** Ubuntu Server
* **Thermal Management:** Custom systemd service overriding the restrictive Dell BIOS fan control, paired with an `i8kmon` fan curve to keep the server idling perfectly at 40-41°C.

## Network Architecture
The core highlight of this server is its ability to bypass CGNAT and restrictive ISP routers without exposing any ports directly to the public internet. 
* **Tailscale:** Configured as a Subnet Router and Global Nameserver for seamless, encrypted access from anywhere.
* **AdGuard Home:** Handles local DNS filtering and DNS rewrites to resolve local domains.
* **Nginx Proxy Manager (NPM):** Reverse proxy handling SSL and internal routing via Docker networks.

## Services Stack

### Infrastructure & Dashboard
* **Homepage:** Highly customizable, aesthetic dashboard for all services.
* **Metube:** Youtube download client.
* **qBittorrent:** Download client.
* **Watchtower:** Docker unattended upgrade.

### Media & Entertainment
* **Jellyfin:** Personal cinema and media streaming.
* **Navidrome:** Personal Spotify alternative (Paired with Feishin on desktop and Symfonium on Android).
* **Filebrowser:** Web-based file manager for server storage.

### Automation & Management
* **Sonarr:** TV Series management.
* **Radarr:** Movie management.
* **Seerr:** Media request manager.

---
*Built with ❤️ and too many all-nighters.*
