export ZSH="/home/bagool/.oh-my-zsh"

ZSH_THEME="apple"


HYPHEN_INSENSITIVE="true"

ENABLE_CORRECTION="true"

DISABLE_UNTRACKED_FILES_DIRTY="true"

plugins=(
    autojump
)
eval `dircolors ~/.dircolors`

source $ZSH/oh-my-zsh.sh

####### aliases #######

# git
alias get=git
alias got=git
alias gut=git
alias ga=git add
alias gaa="git add -A"
alias gs="git status -s"
alias gl='git log --pretty=format:"%C(yellow)%h\\ %ad%Cred%d\\ %Creset%s%Cblue\\ [%cn]" --decorate --date=short'
alias gll='git log --pretty=format:"%C(yellow)%h%Cred%d\\ %Creset%s%Cblue\\ [%cn]" --decorate --numstat'
alias gc="git commit -m"
alias gd='git diff'
alias gds='git diff --stat'
alias gco='git checkout'
alias gpu="git push -u origin HEAD"
alias last='git diff HEAD~1'
# display branches sorted by last modified
alias gb="git for-each-ref --sort='-authordate' --format='%(authordate)%09%(objectname:short)%09%(refname)' refs/heads | sed -e 's-refs/heads/--'"
# hopefully not gonna be used lmao
alias yolo="git add -A && git commit -am"
alias reset_file="git checkout HEAD --"
alias merged_branches_begone="git branch --merged | egrep -v '(^\*|master|main|dev)' | xargs git branch -d"

function clean_repo()
{
    git fetch
    git pull
    merged_branches_begone    
}

# bash
# NOTE: need to install bat
alias cat=bat
alias c=clear
alias cls=clear
alias claer=clear
alias rf="find . -name"

alias dev="cd /mnt/c/Dev"

alias findingdory="grep --color=always --include=\*.cs -rnw . -ie"

alias todo="code ~/.todo"

function zsh()
{
    cd ~/
    code .zshrc
    cd -
}

# TODO: add optional parameter for commit message	
function update_zshrc()
{
    cd ~/dotfiles
    cp ~/.zshrc . 
    git add -A
    git commit -m "Updates .zshrc"
    git push
    cd -
}

function get_todos()
{
    dev
    findingdory "TODO" > ~/todos &
}

function reset_source()
{
    source ~/.zshrc
    cd -
}

# ubuntu
function housekeeping() 
{
    sudo apt update 
    sudo apt upgrade 
    sudo apt autoremove
} 

# windows

alias here="explorer.exe ."
alias start="cmd.exe /C start"

# searches recursively for a VS .sln file and runs the first match
# TODO: add optional parameter for the starting search path
function open_vs() 
{
    solution_path=$(find . -name "*.sln" -print -quit 2>/dev/null)
    # if a matching file was found
    if [[ ! -z $solution_path ]]
    then 
        start $solution_path
    else 
        echo "No solution file found"
    fi
}

alias get_app_settings="func azure functionapp" 

alias vs=open_vs

# auto jump thangs
[[ -s /home/bagool/.autojump/etc/profile.d/autojump.sh ]] && source /home/bagool/.autojump/etc/profile.d/autojump.sh

autoload -U compinit && compinit -u

source /home/bagool/.dotfiles/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

cd /mnt/c/Dev
