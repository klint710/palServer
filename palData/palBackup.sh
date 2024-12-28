# Define source directory and backup directory
SOURCE_DIR="$HOME/Steam/steamapps/common/PalServer/Pal/Saved/SaveGames/0"
BACKUP_DIR="$HOME/palData/palBackup"
DATE=$(date +%Y%m%d_%H%M%S)

# Create a gzip compressed tarbal
sudo zip -r "${BACKUP_DIR}/backup_${DATE}.zip" "${SOURCE_DIR}"

echo "Backuppalbackup.sh of ${SOURCE_DIR} completed at ${BACKUP_DIR}/backup_${DATE}.zip"
