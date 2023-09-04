echo Welcome to copy wizard!
read -p "Do you want to start installation? (yes/no) " yn

case $yn in
        yes ) echo starting....;;
        no ) echo Thanks.;
                exit;;
        * ) echo invalid response;
                exit 1;;
esac
echo Copying files to ~/.config
cd config
cp -r alacritty bspwm rofi polybar sxhkd scripts dunst ~/.config

read -p "Do you want to install Zsh configration? (yes/no) " yn

case $yn in 
	yes ) echo starting....;;
	no ) echo Thanks.;
		exit;;
	* ) echo invalid response;
		exit 1;;
esac

echo Copying Zsh configrations to Home directory...

cp -r .zshrc .oh-my-zsh .zsh ~
