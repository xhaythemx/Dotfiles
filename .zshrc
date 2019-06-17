source ~/Projects/Dotfiles/.aliases
source ~/Projects/Dotfiles/.functions
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
export HISTSIZE=32768;
export HISTFILESIZE="${HISTSIZE}";
export SAVEHIST=4096
setopt SHARE_HISTORY

# Z plugin
. /usr/local/etc/profile.d/z.sh

# ssh
export SSH_KEY_PATH="~/.ssh/rsa_id"

#neofetch
fortune chucknorris | cowsay -f small | lolcat

#NVM
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh" --no-use # This loads nvm

export CLICOLOR=1
export LSCOLORS=gxfxcxdxbxegedabagacad
