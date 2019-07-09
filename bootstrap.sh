#Disables the system login message
touch ~/.hushlogin

#Link Files
ln -sv ~/Projects/dotfiles/.zshrc ~
ln -sv ~/Projects/dotfiles/.vimrc ~
ln -sv ~/Projects/dotfiles/.zsh_history ~
ln -sv ~/Projects/dotfiles/.tmux.conf ~
ln -sv ~/Projects/dotfiles/.tmux ~
#ln -sv ~/Projects/Dotfiles/items.json /Users/haythem/Library/Application\ Support/MTMR/ 


#install the Last version of Node
. ~/.nvm/nvm.sh
nvm install node

#Install Some Brew Apps
source "brew.sh"

#Add zsh to /etc/shells - No need for MacOs Catalina
#echo $(which zsh) | sudo tee -a /etc/shells

# Set Zsh as Default - No need for MacOs Catalina
# chsh -s $(which zsh)

#Install COLORLS
#Change dark_color.yaml
sudo gem install colorls

# Automatically hide and show the Dock
defaults write com.apple.dock autohide-time-modifier -float 0.3;killall Dock
defaults write com.apple.Dock autohide-delay -float 0


