echo "Welcome to the config&needed apps setup!"
read -p "Do you want to start installation? (yes/no) " yn

case $yn in
        yes ) echo starting....;;
        no ) echo Thanks.;
                exit;;
        * ) echo invalid response;
                exit 1;;
esac
sudo pacman -S --noconfirm bspwm sxhkd polybar dolphin alacritty dunst rofi qt5ct kvantum  flameshot ttf-font-awesome ttf-cascadia-code zsh kcolorchooser nitrogen
git clone --depth 1 https://aur.archlinux.org/zsh-theme-powerlevel10k-git && cd
zsh-theme-powerlevel10k-git && makepkg -si && cd -
chsh -s /bin/zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
echo 'source /usr/share/zsh-theme-powerlevel10k/powerlevel10k.zsh-theme' >>~/.zshrc
sh copy.sh
