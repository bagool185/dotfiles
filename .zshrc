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

# bash
alias c=clear
alias cls=clear
alias claer=clear
alias rf="find . -name"

alias dev="cd /mnt/c/Dev"
alias zsh="code ~/.zshrc"

alias findingdory="grep --include=\*.cs -rnw . -e"

function update_zshrc()
{
    cd ~/dotfiles 
    cp ~/.zshrc . 
    git add -A
    git commit -m "Updates .zshrc"
    git push
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

alias vs=open_vs

# auto jump thangs
[[ -s /home/bagool/.autojump/etc/profile.d/autojump.sh ]] && source /home/bagool/.autojump/etc/profile.d/autojump.sh

autoload -U compinit && compinit -u

source /home/bagool/.dotfiles/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

cd /mnt/c/Dev
