echo Welcome to copy wizard!
echo "Do you want to start copy files?(Y/N)" ; read process
if [[ $process == y || $process == Y ]]; then
echo Copying files to ~/.config
cd config
cp -r alacritty bspwm rofi polybar sxhkd scripts dunst ~/.config
cd -
sh .zshinstall.sh
elif [[ $process == n|| $process == N ]]; then
clear
cd -
sh .zshinstall.sh
fi
