# Info

This is a distrobox container that has CUPS preinstalled. This container doea not require root privleges for this to work.

## Getting started

First create the container using distrobox

```bash
distrobox create -i ghcr.io/ublue-os/arch-distrobox:latest -n cups --init
```

Enter the container

```bash
distrobox enter cups
```
