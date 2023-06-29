# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
ZSH_THEME="powerlevel10k/powerlevel10k"

# Set list of themes to pick from when loading at random
# Setting this variable when ZSH_THEME=random will cause zsh to load
# a theme from this variable instead of looking in $ZSH/themes/
# If set to an empty array, this variable will have no effect.
# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion.
# Case-sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment one of the following lines to change the auto-update behavior
# zstyle ':omz:update' mode disabled  # disable automatic updates
# zstyle ':omz:update' mode auto      # update automatically without asking
# zstyle ':omz:update' mode reminder  # just remind me to update when it's time

# Uncomment the following line to change how often to auto-update (in days).
# zstyle ':omz:update' frequency 13

# Uncomment the following line if pasting URLs and other text is messed up.
# DISABLE_MAGIC_FUNCTIONS="true"

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
#ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# You can also set it to another string to have that shown instead of the default red dots.
# e.g. COMPLETION_WAITING_DOTS="%F{yellow}waiting...%f"
# Caution: this setting can cause issues with multiline prompts in zsh < 5.7.1 (see #5765)
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
# Standard plugins can be found in $ZSH/plugins/
# Custom plugins may be added to $ZSH_CUSTOM/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(
    aws
    fluxcd
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
    #compleat
    rsync
    kubectl-autocomplete
    wd
    #Below plugin is for auto creating kubectl aliases
    kubectl
    zsh-autosuggestions
    #zsh-syntax-highlighting
    fzf-zsh-plugin
    )


# Below line is specific for the zsh-completions
# https://github.com/zsh-users/zsh-completions
fpath+=${ZSH_CUSTOM:-${ZSH:-~/.oh-my-zsh}/custom}/plugins/zsh-completions/src

#Source oh-my-zsh
source $ZSH/oh-my-zsh.sh


# Stop asking for annoying auto-update
DISABLE_AUTO_UPDATE="true"

export ShellSupport=~/.Dot/ShellSupport

if [ -f $ShellSupport/.zsh_aliases ]; then
    source $ShellSupport/.zsh_aliases;
else 
   echo '[FATAL] Could not find the main .zsh_alises for custom setup'
fi
source $ZSH/oh-my-zsh.sh

HISTORY_IGNORE='(clear|celar|history*|cd *|Kni*|Necr*|ls *)'
# Custom History Tweaks
[ -f ~/.zsh_history_tweaks ] && source ~/.zsh_history_tweaks


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

# Auto Jump Stuff
[[ -s /home/cicduser/.autojump/etc/profile.d/autojump.sh ]] && source /home/cicduser/.autojump/etc/profile.d/autojump.sh

# For compleat plugin
#autoload -U compinit && compinit -u
autoload -Uz compinit bashcompinit
compinit
bashcompinit
source ~/.bash_completion.d/compleat_setup

# zsh-autosuggestions assisting tweak to select suggestion via tab - later removed below because it hinders with suggestions or selecting directories
ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE="fg=8,bg=234"
#bindkey '\t' end-of-line
#bindkey '\t' autosuggest-accept
bindkey '^ I'   complete-word       # tab          | complete
# Make Ctrl+L for forwarding one word in suggested line. - Conflicts with
#bindkey '^L'   forward-word
bindkey '^K' forward-word  # Ctrl+K | accept one word
bindkey '^J' backward-word
#bindkey '^H'   backward-word
#bindkey '^ [[Z' autosuggest-accept  # shift + tab  | autosuggest
# [ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
# Beginning of the line - end of the line and delete char
bindkey  "^[[1~"   beginning-of-line
bindkey  "^[[4~"   end-of-line
bindkey  "^[[3~"  delete-char

# zsh-autosuggestions assisting tweak to prioritize some things
export ZSH_AUTOSUGGEST_STRATEGY=(
    history
    completion
)

# Source Feature Reach Syntax Highlighting Plugin:
source ~/.oh-my-zsh/custom/plugins/fsh/F-Sy-H.plugin.zsh


# zplug stuff - Not working
#export ZPLUG_HOME=~/.Dot/.zplug
#source ~/.Dot/.zplug/init.zsh
#zplug load
autoload -U +X bashcompinit && bashcompinit
complete -o nospace -C /home/apollo/go/bin/bit bit
