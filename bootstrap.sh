#Disables the system login message
touch ~/.hushlogin

#install the Last version of Node 
nvm install node


#Link .zshrc and .vimrc with the Home directory
ln -sv ~/Projects/dotfiles/.zshrc ~  
ln -sv ~/Projects/dotfiles/.vimrc ~   


#Install Some Brew Apps
#zsh
#zsh-syntax-highlighting
#cmatrix
#cowsay
#fortune
#lolcat
#neofetch
#nmap
#tree
source "brew.sh"


