#Disables the system login message
touch ~/.hushlogin

Install () {
    #Link .zshrc and .vimrc with the Home directory
	echo "This utility will symlink the files in this repo to the Home directory"
	echo "Proceed? (y/n)"
	read resp
	if [ "$resp" = 'y' -o "$resp" = 'Y' ] ; then
        ln -sv ~/Projects/dotfiles/.zshrc ~  
        ln -sv ~/Projects/dotfiles/.vimrc ~   
		echo "Symlinking complete"
	else
		echo "Symlinking cancelled by user"
		return 1
	fi

    #install the Last version of Node 
    echo "This utility will install the Last Version of Node"
	echo "Proceed? (y/n)"
	read resp
	if [ "$resp" = 'y' -o "$resp" = 'Y' ] ; then
        nvm install node
		echo "Node Installed"
	else
		echo "Installation cancelled by user"
		return 1
	fi

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
    echo "This utility will install Some Useful brew Apps"
	echo "Proceed? (y/n)"
	read resp
	if [ "$resp" = 'y' -o "$resp" = 'Y' ] ; then
        source "brew.sh"
		echo "Apps Installed"
	else
		echo "Installation cancelled by user"
		return 1
	fi
 
}

Install

