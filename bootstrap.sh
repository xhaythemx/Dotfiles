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

#Add zsh to /etc/shells
echo $(which zsh) | sudo tee -a /etc/shells

# Set Zsh as Default 
chsh -s $(which zsh)

# Automatically hide and show the Dock
defaults write com.apple.dock autohide-time-modifier -float 0.3;killall Dock
defaults write com.apple.Dock autohide-delay -float 0
		

