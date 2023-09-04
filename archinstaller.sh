echo "Welcome to the config&needed apps setup!"
echo "do you want to continue? (Y/N)" ; read process
if [[ $process == y || $process == Y ]]; then
sudo pacman -S bspwm sxhkd polybar dolphin alacritty dunst rofi qt5ct kvantum  flameshot ttf-font-awesome ttf-cascadia-code zsh kcolorchooser nitrogen
git clone --depth 1 https://aur.archlinux.org/zsh-theme-powerlevel10k-git && cd
zsh-theme-powerlevel10k-git && makepkg -si && cd -
chsh -s /bin/zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
echo 'source /usr/share/zsh-theme-powerlevel10k/powerlevel10k.zsh-theme' >>~/.zshrc
elif [[ $process == n|| $process == N ]]; then
clear
sh copy.sh

else
echo Wrong answer!

fi
