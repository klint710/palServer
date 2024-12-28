#account=$(head -n 1 "$HOME/palData/value.txt")
BACKUP_DIR="$HOME/palData/palBackup"
target="backup_20241110_225212"      #backup_20240222_024656 還原改這一段的檔名

# Create a gzip compressed tarbal
unzip -o ${BACKUP_DIR}/${target}.zip -d $HOME/palData/revert

$copy
cp -r $HOME/palData/revert$HOME/Steam/steamapps/common/PalServer/Pal/Saved/SaveGames/0 $HOME/Steam/steamapps/common/PalServer/Pal/Saved/SaveGames
rm -r $HOME/palData/revert/home

echo revert done
