#!/bin/sh
sudo apt-get install vim
sudo apt-get install cmake
sudo apt-get install g++
sudo apt-get install ssh
sudo apt-get install git subversion

echo  "\033[1;33;40mInstall ZSH!!!\033[0m\n"
sudo apt-get install zsh
sudo wget --no-check-certificate https://github.com/robbyrussell/oh-my-zsh/raw/master/tools/install.sh -O - | sh 
chsh -s /bin/zsh


echo  "\033[1;33;40mSet auto ls command after cd command\033[0m\n"
vim ~/.zshrc -c '$put=\"\nchpwd() {\n    emulate -L zsh\n    ls \n}\"' -c 'wq'

echo  "\033[1;33;40mSet vim tab size = 4 \033[0m\n"
vim ~/.vimrc -c '$put=\"set tabstop=4\"' -c 'wq'

#echo  "\033[1;33;40mSet vim colorscheme = solarized \033[0m\n"
#git clone https://github.com/sickill/vim-sunburst.git
#mkdir ~/.vim/colors
#cp ~/vim-sunburst/colors/Sunburst.vim ~/.vim/colors
#vim ~/.vimrc -c '$put=\"syntax enable\nset background=dark\ncolorscheme Sunburst\n\"' -c 'wq'

#echo "Install AMD SDK!!!!!\n"
#sudo ./AMD-APP-SDK-v2.9-1.599.381-GA-linux64.sh


