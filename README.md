# Homelab Setup

## Env Files:
there is one `.env` file that details the ports and subdomains of each application.
note that the `<APP>_PORT` variable refers to the port the app runs on INSIDE of the container

## Apps:
Each subfolder is one docker container. In each subolder, there is a `files` folder.
This should be a link file to where all of the persistent storage is. 

## Samba Share:
https://forums.raspberrypi.com/viewtopic.php?t=205379

## Docker on SD Card:
Run on External HDD
SD cards wear out fast under Docker's constant writes.

1. daemon.json: 
```json
{"data-root": "/mnt/ext_hdd/docker"}
```
2. docker.service.d/override.conf: 
```
[Unit]
RequiresMountsFor=/mnt/ext_hdd
```
3. /etc/fstab: mount HDD by UUID=, with nofail
4. daemon-reload + restart docker to apply
