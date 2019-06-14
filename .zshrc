# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH="/Users/haythem/.oh-my-zsh"


# Set name of the theme to load. Optionally, if you set this to "random"
# it'll load a random theme each time that oh-my-zsh is loaded.
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
ZSH_THEME=""

# Set list of themes to load
# Setting this variable when ZSH_THEME=random
# cause zsh load theme from this variable instead of
# looking in ~/.oh-my-zsh/themes/
# An empty array have no effect
# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion. Case
# sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# The optional three formats: "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(
  git zsh-autosuggestions z
)

source $ZSH/oh-my-zsh.sh


# Set Spaceship ZSH as a prompt
autoload -U promptinit; promptinit
prompt spaceship


SPACESHIP_CHAR_SYMBOL='\uf0e7'
SPACESHIP_CHAR_COLOR_SUCCESS=yellow
SPACESHIP_CHAR_SUFFIX=' '

SPACESHIP_DIR_LOCK_SYMBOL=' \uf023'
SPACESHIP_PACKAGE_SHOW=false

# SPACESHIP_TIME_SHOW=true

# Symbole : ▲ ∆ » ❯




# prompt='%}%(12V.%F{242}%12v%f .)%(?.%F{magenta}.%F{red})${PURE_PROMPT_SYMBOL:-❯}%f'
# PROMPT='%F{green}%* '$PROMPT

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# ssh
export SSH_KEY_PATH="~/.ssh/rsa_id"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"





#neofetch
fortune chucknorris | cowsay -f small | lolcat






alias change='cash 100 eur tnd'
alias showFiles="defaults write com.apple.finder AppleShowAllFiles -bool true && killall Finder"
alias hideFiles="defaults write com.apple.finder AppleShowAllFiles -bool false && killall Finder"
alias e="((sleep 1; killall cmatrix; sleep 1; osascript -e 'quit app "Terminal"') &); cmatrix; exit"
alias c='clear'
alias hideDesktop='defaults write com.apple.finder CreateDesktop false && killall Finder'
alias showDesktop='defaults write com.apple.finder CreateDesktop true && killall Finder'
alias t='tree -F -L 1 -a'
alias up='upgrade_oh_my_zsh'
alias nodeup='nvm install node --latest-npm --reinstall-packages-from=node'
alias npmup='npm update -g'
alias create='npx create-react-app'
alias prettier='npm install --save-dev --save-exact prettier'







function update() {
  echo $fg[cyan]Update Started $fg[white]at$fg[yellow] $(date "+%H:%M:%S") $fg[white]
  echo $fg[cyan]Updating Homebrew\ ... $fg[white]
    brew update
    brew upgrade
    brew cask upgrade
    brew cleanup
    brew doctor
    echo $fg[cyan]Updating NVM\ ... $fg[white]
    nvmup
    echo $fg[cyan]Updating Node\ ... $fg[white]
    nodeup
    echo $fg[cyan]Updating NPM\ ... $fg[white]
    npmup
    nyan
 
}

function nvmup() {
  
  cd ~/.nvm
  git fetch --tags origin
  git checkout `git describe --abbrev=0 --tags --match "v[0-9]*" $(git rev-list --tags --max-count=1)`
  source nvm.sh
  cd 
  
}





function nyan() {
  RED="$(tput setaf 1)"
  GREEN="$(tput setaf 2)"
  YELLOW="$(tput setaf 3)"
  CYAN="$(tput setaf 6)"
  WHITE="$(tput setaf 7)"
  BOLD="$(tput bold)"
  NOCOLOR="$(tput sgr0)"

  echo
  echo -en $RED'-_-_-_-_-_-_-_'
  echo -e $NOCOLOR$BOLD$WHITE',------,'$NOCOLOR
  echo -en $YELLOW$WHIT'_-_-_-_-_-_-_-'
  echo -e $NOCOLOR$BOLD$WHITE'|   /\_/\\'$NOCOLOR
  echo -en $GREEN'-_-_-_-_-_-_-'
  echo -e $NOCOLOR$BOLD$WHITE'~|__( ^ .^)'$NOCOLOR
  echo -en $CYAN'-_-_-_-_-_-_-'
  echo -e $NOCOLOR$BOLD$WHITE'""  ""'$NOCOLOR
  echo

 
}

function acp() {
  git add .
  git commit -m "$1"
  git push
}

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh" --no-use # This loads nvm



source /usr/local/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
