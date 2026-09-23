export RESTIC_REPOSITORY="rclone:gdrive:homelab/backups/immich"
export RESTIC_PASSWORD="password" # change if needed
export UPLOAD_LOCATION="$HOME/homelab/immich/files/library"
export RESTIC_CACHE_DIR="/mnt/ext_hdd/restic-cache"
BACKUP_PATHS=(
	"$UPLOAD_LOCATION/library"
	"$UPLOAD_LOCATION/upload"
	"$UPLOAD_LOCATION/profile"
)
restic backup "${BACKUP_PATHS[@]}"
