# Homelab Setup

## Env Files
there is one `.env` file that details the ports and subdomains of each application.
note that the `<APP>_PORT` variable refers to the port the app runs on INSIDE of the container

## Apps
Each subfolder is one docker container. In each subolder, there is a `files` folder.
This should be a link file to where all of the persistent storage is. 

