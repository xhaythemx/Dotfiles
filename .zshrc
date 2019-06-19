source ~/Projects/Dotfiles/.aliases
source ~/Projects/Dotfiles/.functions
source ~/Projects/Dotfiles/.autocompletion
source /usr/local/share/zsh-autosuggestions/zsh-autosuggestions.zsh
source /usr/local/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh


# Set Spaceship ZSH as a prompt
autoload -U promptinit; promptinit
prompt spaceship

# Spaceship configuration
SPACESHIP_CHAR_SYMBOL='\uf0e7'
SPACESHIP_CHAR_COLOR_SUCCESS=yellow
SPACESHIP_CHAR_SUFFIX=' '

SPACESHIP_DIR_LOCK_SYMBOL=' \uf023'
SPACESHIP_PACKAGE_SHOW=false

# SPACESHIP_TIME_SHOW=true
# Symbole : ▲ ∆ » ❯



# prompt='%}%(12V.%F{242}%12v%f .)%(?.%F{magenta}.%F{red})${PURE_PROMPT_SYMBOL:-❯}%f'
# PROMPT='%F{green}%* '$PROMPT

# Search History Keys
bindkey '^[[A' history-search-backward
bindkey '^[[B' history-search-forward

# Save History
HISTFILE=~/.zsh_history
HISTSIZE=50000
SAVEHIST=50000
HISTFILESIZE="${HISTSIZE}";
setopt SHARE_HISTORY #share history between different instances of the shell
setopt HIST_IGNORE_ALL_DUPS  # Remove older duplicate entries from history

# Z plugin
. /usr/local/etc/profile.d/z.sh

# ssh
export SSH_KEY_PATH="~/.ssh/rsa_id"

#neofetch
fortune chucknorris | cowsay -f small | lolcat

#Auto_CD
setopt auto_cd 

#NVM
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh" --no-use # This loads nvm

export CLICOLOR=1
export LSCOLORS=gxfxcxdxbxegedabagacad
