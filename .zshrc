# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
  export TERM="xterm-256color"
  export ZSH="/root/.oh-my-zsh"

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
ZSH_THEME="agnoster"

# Set list of themes to pick from when loading at random
# Setting this variable when ZSH_THEME=random will cause zsh to load
# a theme from this variable instead of looking in ~/.oh-my-zsh/themes/
# If set to an empty array, this variable will have no effect.
# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )

# Uncomment the following line to use case-sensitive completion.
#CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion.
# Case-sensitive completion must be off. _ and - will be interchangeable.
HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
#COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
DISABLE_UNTRACKED_FILES_DIRTY="true"

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
plugins=(
  git,
  composer,
  npm,
  sudo,
  python,
  zsh-syntax-highlighting,
  zsh-autosuggestions
)

source $ZSH/oh-my-zsh.sh

#Powerlevel9k settings

# 73 greenish
# 235 grey->black
# 238 black

POWERLEVEL9K_MODE='awesome-fontconfig'

POWERLEVEL9K_PROMPT_ON_NEWLINE=true

POWERLEVEL9K_TIME_FOREGROUND='73'
POWERLEVEL9K_TIME_BACKGROUND='235'
POWERLEVEL9K_LEFT_PROMPT_FOREGROUND='73'

POWERLEVEL9k_LEFT_PROMPT_ELEMENTS=(dir vcs)

POWERLEVEL9K_MULTILINE_FIRST_PROMPT_PREFIX=""
POWERLEVEL9K_MULTILINE_LAST_PROMPT_PREFIX=" "


####

POWERLEVEL9K_PROMPT_ON_NEWLINE=true
POWERLEVEL9K_PROMPT_ADD_NEWLINE=true
POWERLEVEL9K_MULTILINE_FIRST_PROMPT_PREFIX=""
POWERLEVEL9K_MULTILINE_LAST_PROMPT_PREFIX=""

POWERLEVEL9K_LEFT_PROMPT_ELEMENTS=(os_icon root_indicator dir dir_writable vcs )
POWERLEVEL9K_RIGHT_PROMPT_ELEMENTS=(status todo command_execution_time virtualenv)


# user
POWERLEVEL9K_ROOT_INDICATOR_FOREGROUND='black'
POWERLEVEL9K_ROOT_INDICATOR_BACKGROUND='73'
POWERLEVEL9K_ROOT_ICON="\uf070"
POWERLEVEL9K_USER_ICON="\uf09c"
POWERLEVEL9K_SUDO_ICON="\uf09c"


POWERLEVEL9K_DIR_HOME_FOREGROUND='73'
POWERLEVEL9K_DIR_HOME_BACKGROUND='black'
POWERLEVEL9K_DIR_HOME_SUBFOLDER_FOREGROUND='73'
POWERLEVEL9K_DIR_HOME_SUBFOLDER_BACKGROUND='black'
POWERLEVEL9K_DIR_DEFAULT_FOREGROUND='73'
POWERLEVEL9K_DIR_DEFAULT_BACKGROUND='black'
POWERLEVEL9K_DIR_WRITABLE_FORBIDDEN_FOREGROUND='73'
POWERLEVEL9K_DIR_WRITABLE_FORBIDDEN_BACKGROUND='black'
# TODO
POWERLEVEL9K_TODO="echo \n '\uf859'"
POWERLEVEL9K_TODO_FOREGROUND='73'
POWERLEVEL9K_TODO_BACKGROUND='black'
# VCS
POWERLEVEL9K_VCS_CLEAN_FOREGROUND='black'
POWERLEVEL9K_VCS_CLEAN_BACKGROUND='73'
POWERLEVEL9K_VCS_UNTRACKED_FOREGROUND='black'
POWERLEVEL9K_VCS_UNTRACKED_BACKGROUND='73'
POWERLEVEL9K_VCS_MODIFIED_FOREGROUND='black'
POWERLEVEL9K_VCS_MODIFIED_BACKGROUND='73'

POWERLEVEL9K_COMMAND_EXECUTION_TIME_FOREGROUND='73'
POWERLEVEL9K_COMMAND_EXECUTION_TIME_BACKGROUND='black'

POWERLEVEL9K_VIRTUALENV_FOREGROUND='black'
POWERLEVEL9K_VIRTUALENV_BACKGROUND='73'

POWERLEVEL9K_VI_MODE_INSERT_FOREGROUND='73'
POWERLEVEL9K_VI_MODE_INSERT_BACKGROUND='black'
POWERLEVEL9K_VI_MODE_NORMAL_FOREGROUND='73'
POWERLEVEL9K_VI_MODE_NORMAL_BACKGROUND='black'

POWERLEVEL9K_SHORTEN_DIR_LENGTH=1
POWERLEVEL9K_SHORTEN_DELIMITER="."

POWERLEVEL9K_STATUS_CROSS=true
POWERLEVEL9K_STATUS_FOREGROUND='73'
POWERLEVEL9K_STATUS_BACKGROUND='black'

source /usr/share/zsh-theme-powerlevel9k/powerlevel9k.zsh-theme


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
alias ga="git add . ; git commit -am"
alias c="clear"
alias cls="clear"
alias f="find . | grep -i"
alias art="php artisan"
alias artm="php artisan make"
alias code="code --user-data-dir"
alias g="g++ -Wall -std=c++17"
alias todo="cat /home/bagool/todo.txt | wc -l | lolcat"
alias firefox="firejail --private firefox &"

neofetch --ascii ~/Pictures/neofetch.txt --bold off --ascii_colors 6 7 6 6 6 7

# The next line updates PATH for the Google Cloud SDK.
if [ -f '/tmp/mozilla_root0/google-cloud-sdk-225.0.0-linux-x86_64/google-cloud-sdk/path.zsh.inc' ]; then . '/tmp/mozilla_root0/google-cloud-sdk-225.0.0-linux-x86_64/google-cloud-sdk/path.zsh.inc'; fi

# The next line enables shell command completion for gcloud.
if [ -f '/tmp/mozilla_root0/google-cloud-sdk-225.0.0-linux-x86_64/google-cloud-sdk/completion.zsh.inc' ]; then . '/tmp/mozilla_root0/google-cloud-sdk-225.0.0-linux-x86_64/google-cloud-sdk/completion.zsh.inc'; fi
