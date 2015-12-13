#!/bin/sh
sudo apt-get update
sudo apt-get install vim cmake g++ ssh git subversion

echo  "\033[1;33;40mInstall ZSH, Oh-My-ZSH, and Powerline Fonts\n Remenber install Menlo for powerline font!!!\033[0m\n"
sudo apt-get install zsh
sudo wget --no-check-certificate https://github.com/robbyrussell/oh-my-zsh/raw/master/tools/install.sh -O - | sh 
git clone https://github.com/supermarin/powerline-fonts

echo  "\033[1;33;40mSet auto ls command after cd command\033[0m\n"
vim ~/.zshrc -c '$put=\"\nchpwd() {\n    emulate -L zsh\n    ls \n}\"' -c 'wq'
chsh -s /bin/zsh

echo  "\033[1;33;40mSet .vimrc and use molokai color scheme \033[0m\n"
sudo cp .vimrc ~
mkfir ~/.vim
sudo cp -r color ~/.vim/

echo  "\033[1;33;40mInstall Monaco font \033[0m\n"
curl -kL https://raw.github.com/cstrap/monaco-font/master/install-font-ubuntu.sh | bash


sudo reboot
