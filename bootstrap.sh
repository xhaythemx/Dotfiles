#Disables the system login message
touch ~/.hushlogin

#Link .zshrc and .vimrc with the Home directory
ln -sv ~/Projects/dotfiles/.zshrc ~  
ln -sv ~/Projects/dotfiles/.vimrc ~  


#install the Last version of Node 
. ~/.nvm/nvm.sh
nvm install node
	
#Install Some Brew Apps
source "brew.sh"

# Set Zsh as Default 
chsh -s $(which zsh)
		
