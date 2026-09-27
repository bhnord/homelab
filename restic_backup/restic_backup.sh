set -a
source "$HOME/homelab/restic_backup/.env.secrets"
set +a

# Immich only rn
export RESTIC_REPOSITORY="b2:$B2_BUCKET_NAME:/immich"
export RESTIC_CACHE_DIR="/mnt/ext_hdd/restic-cache"
export RESTIC_PASSWORD="password" # change later if needed

export IMMICH_UPLOAD_LOCATION="$HOME/homelab/immich/files/library"
IMMICH_BACKUP_PATHS=(
	"$IMMICH_UPLOAD_LOCATION"
)

restic backup "${IMMICH_BACKUP_PATHS[@]}"
