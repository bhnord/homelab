1. install `restic` + `rclone`
2. setup `rclone`
3. set restic remote: (`restic -r rclone:gdrive:<filepath> init`)
4. set env vars: `export RESTIC_REPOSITORY="rclone:gdrive:<filepath>"`, `export RESTIC_PASSWORD="<password>"`

restic repo: `gdrive:homelab/backups/<service_name>/`

(mostly just backing up immich)
