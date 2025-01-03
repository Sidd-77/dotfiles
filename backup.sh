#!/bin/bash 

echo "[LOG][$(date '+%d %h %Y : %T')] Taking backup of dotfiles"

echo "[LOG][$(date '+%d %h %Y : %T')] Coping files"

cp /etc/anacrontab ~/dotfiles/
cp -r ~/.config/kitty ~/dotfiles/ 
cp -r ~/.config/sway ~/dotfiles/ 
cp -r ~/.config/nvim ~/dotfiles/ 
cp -r ~/.config/waybar ~/dotfiles/ 
cp -r ~/.config/rofi ~/rofi/
cp ~/.zshrc ~/dotfiles/zsh/
cp ~/.fehbg ~/dotfiles/feh/
# cp -r ~/walls ~/dotfiles/walls

echo "[LOG][$(date '+%d %h %Y : %T')] Coping done"

cd ~/dotfiles/ 

echo "[LOG][$(date '+%d %h %Y : %T')] Commiting changes"
git add .
git commit -m "backup $(date)"
echo "[LOG][$(date '+%d %h %Y : %T')] Changes commited"

echo "[LOG][$(date '+%d %h %Y : %T')] Pushing changes to remote repository"
git push
echo "[LOG][$(date '+%d %h %Y : %T')] Done"


echo "[LOG][$(date '+%d %h %Y : %T')] Backup done"


