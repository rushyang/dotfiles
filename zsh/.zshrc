# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH
# zsh configuration file
# Path to your oh-my-zsh installation.
export ZSH="/home/vagrant/.oh-my-zsh"

plugins=(
    aws
    autojump
    branch
    colored-man-pages
    themes
    encode64
    extract
    docker
    git
    gitfast
    helm
    compleat
    k
    rsync
    kube-ps1
    wd
    )

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
#ZSH_THEME="robbyrussell"
ZSH_THEME="powerlevel10k/powerlevel10k"

#Source the ZSH history tweaks
[ -f ~/.zsh_history_tweaks ] && source ~/.zsh_history_tweaks

# Source Fuzzy Search (ignore the errors)
#[ -f ~/.fzf.bash ] && source ~/.fzf.bash

# Stop asking for annoying auto-update
DISABLE_AUTO_UPDATE="true"

# Source the custom aliases
#[ -f ~/.custom_aliases ] && source ~/.custom_aliases


# Set list of themes to pick from when loading at random
# Setting this variable when ZSH_THEME=random will cause zsh to load
# a theme from this variable instead of looking in ~/.oh-my-zsh/themes/
# If set to an empty array, this variable will have no effect.
# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion.
# Case-sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to automatically update without prompting.
# DISABLE_UPDATE_PROMPT="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line if pasting URLs and other text is messed up.
# DISABLE_MAGIC_FUNCTIONS=true

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
# You can set one of the optional three formats:
# "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# or set a custom format using the strftime function format specifications,
# see 'man strftime' for details.
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load?
# Standard plugins can be found in ~/.oh-my-zsh/plugins/*
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
if [ -f ~/.zsh_aliases ]; then
    source ~/.zsh_aliases;
fi
source $ZSH/oh-my-zsh.sh

HISTORY_IGNORE='(clear|celar|history*|cd *|ls *)'

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

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

# Source the current AWS session - created by awsexport custom function
#[ -f ~/.current_aws_session ] && source ~/.current_aws_session
[ -f ~/.aws/current_profile ] && source ~/.aws/current_profile

# Altering fpath to add zsh-completions package
fpath=(~/.zsh_specific/zsh-completions/src $fpath)
# source the kubectl completion file alias from .custom-aliases
kcompl

# Required lines to run autojump
[[ -s /home/vagrant/.autojump/etc/profile.d/autojump.sh ]] && source /home/vagrant/.autojump/etc/profile.d/autojump.sh
autoload -U compinit && compinit -u

#

# [ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
# Beginning of the line - end of the line and delete char
bindkey  "^[[1~"   beginning-of-line
bindkey  "^[[4~"   end-of-line
bindkey  "^[[3~"  delete-char

export TERM=xterm-256color

# Some tweaks with Pygments for parsing colors on CLI to less command
export LESS='-R'
export LESSOPEN='|~/.lessfilter %s'
