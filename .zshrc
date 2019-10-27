# If you come from bash you might have to change your $PATH.
# ni
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH=/Users/kevinchan/.oh-my-zsh

# Set name of the theme to load. Optionally, if you set this to "random"
# it'll load a random theme each time that oh-my-zsh is loaded.
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
#
# UNCOMMENT NEXT LINE:
#ZSH_THEME="powerlevel10k/powerlevel10k"
#ZSH_THEME="sorin"
ZSH_THEME="3den"

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
# DISABLE_AUTO_TITLE="true"

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
  git
  virtualenv
)

source $ZSH/oh-my-zsh.sh

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
# export SSH_KEY_PATH="~/.ssh/rsa_id"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"
source /usr/local/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

# Postgres
alias startpostgres="brew services start postgresql"
alias stoppostgres="brew services stop postgresql"

# Git
alias gs="git status"
alias gd="git diff"
alias gaa="git add -A"
alias gch="git checkout"
alias gc="git commit"
alias gp="git push"

# VirtualEnv
alias newvenv="python3 -m virtualenv venv"
alias venv="source venv/bin/activate"

## powerlevel9k
POWERLEVEL9K_RIGHT_PROMPT_ELEMENTS=(status virtualenv)
POWERLEVEL9K_LEFT_PROMPT_ELEMENTS=(dir rbenv vcs)

# Uncomment to start powerline prompt on new line
#POWERLEVEL9K_PROMPT_ON_NEWLINE=true
## Add a space in the first prompt
#POWERLEVEL9K_MULTILINE_FIRST_PROMPT_PREFIX="%f"
## Visual customisation of the second prompt line
#local user_symbol="$"
#if [[ $(print -P "%#") =~ "#" ]]; then
#    user_symbol = "#"
#fi
#POWERLEVEL9K_MULTILINE_LAST_PROMPT_PREFIX="%{%B%F{white}%K{blue}%} $user_symbol%{%b%f%k%F{blue}%} %{%f%}"


source /usr/local/bin/activate.sh

# fastlane
export PATH="$HOME/.fastlane/bin:$PATH"

# Python HTTP Server
alias python-httpserver="python -m SimpleHTTPServer 8000"

# Autojump
[[ -s /Users/kevinchan/.autojump/etc/profile.d/autojump.sh ]] && source /Users/kevinchan/.autojump/etc/profile.d/autojump.sh
autoload -U compinit && compinit -u


# Add RVM to PATH for scripting. Make sure this is the last PATH variable change.
export PATH="$PATH:$HOME/.rvm/bin"

# SSH AppDev backend servers
alias ssh-transit-dev="ssh -i ~/server.pem appdev@transit-testflight.cornellappdev.com"
alias ssh-transit-prod="ssh -i ~/server.pem appdev@transit-backend.cornellappdev.com"
alias ssh-transit-ghopper="ssh -i ~/server.pem appdev@157.230.65.212"

# direnv
eval "$(direnv hook zsh)"
