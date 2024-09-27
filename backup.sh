#!/bin/bash 

echo "[LOG] Taking backup of dotfiles"

echo "[LOG] Coping files"

cp /etc/anacrontab ~/dotfiles/
cp -r ~/.config/kitty ~/dotfiles/ 
cp -r ~/.config/i3 ~/dotfiles/ 
cp -r ~/.config/nvim ~/dotfiles/ 
cp -r ~/.config/polybar ~/dotfiles/ 
cp -r ~/.config/xfce4 ~/dotfiles/ 
cp -r ~/.config/rofi ~/rofi/
cp ~/.zshrc ~/dotfiles/zsh/
cp ~/.fehbg ~/dotfiles/feh/
cp -r ~/walls ~/dotfiles/walls

echo "[LOG] Coping done"

cd ~/dotfiles/ 

echo "[LOG] Commiting changes"
git add .
git commit -m "backup $(date)"
echo "[LOG] Changes commited"

echo "[LOG] Pushing changes to remote repository"
git push
echo "[LOG] Done"


echo "[LOG] Backup done"


