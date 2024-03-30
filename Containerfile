FROM ghcr.io/ublue-os/arch-distrobox:latest

LABEL com.github.containers.toolbox="true" \
      usage="This image is meant to be used with the toolbox or distrobox command" \
      summary="CUPS in distrobox" \
      maintainer="dnkmmr"

RUN      pacman -Syu --noconfirm

RUN      pacman -S systemd --noconfirm

RUN      pacman -S cups print-manager system-config-printer nss-mdns ghostscript --noconfirm

RUN      pacman -S okular systemsettings firefox --noconfirm
