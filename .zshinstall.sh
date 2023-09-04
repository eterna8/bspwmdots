echo "Do you want copy Zsh config files?(Y/N)" ; read zshprocess
if [[ $zshprocess == y || $zshprocess == Y ]]; then
echo Copying Zsh configrations to Home directory...
cd config
cp -r .zshrc .oh-my-zsh .zsh ~
elif [[ $zshprocess == n|| $zshprocess == N ]]; then
clear
echo "Goodbye."

else
echo Wrong answer!

fi
