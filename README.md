# Info

This is a distrobox container that has CUPS preinstalled. This container doea not require root privleges for this to work.

## Getting started

First create the container using distrobox

```bash
distrobox create -i ghcr.io/dnkmmr69420/archlinux-cups:latest -n cups --init -H ~/.local/share/cups-home -p
```

experimental command

```bash
distrobox create -i ghcr.io/dnkmmr69420/archlinux-cups:latest -n cups -H ~/.local/share/cups-home --init -p --unshare-netns -a "-p 1631:631"
```

Enter the container

```bash
distrobox enter cups
```

Update all packages. Paru is already preinstalled.

```bash
paru
```

Start some services

```bash
sudo systemctl enable --now avahi-daemon
sudo systemctl enable --now cups
```

Run this command in the terminal to start the gui

```bash
system-config-printer
```

## Credits

base arch image: https://github.com/ublue-os/arch-distrobox
