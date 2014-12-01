# if not running interactively, don't do anything
[ -z "$PS1" ] && return

# set up z: https://github.com/rupa/z
. ~/.z.sh

# git autocompletion
. ~/.git-completion.bash
. ~/.git-prompt.sh
__git_complete gco _git_checkout

# git aliases
alias gc='git stash && git stash clear'
alias gco='git checkout'
alias gd='git diff'
alias gl='git log --date=local'
alias gs='git status'
alias gum="echo 'Resetting master to the latest origin/master...' && git fetch && git update-ref refs/heads/master origin/master"

# set vim as the default editor
export EDITOR='vim'
export VISUAL='vim'

# use vim bindings in the shell
set -o vi

# colors
export GREP_OPTIONS='--color=auto'
export GREP_COLOR='1;32'

export CLICOLOR='1'

alias ls='ls -G'  # the -G command in OSX is for colors, in Linux it's no groups
export LSCOLORS="gxDxFxdxCxExExhbadgxgx"

# custom colors and prompt statements
export COLOR_LIGHT_CYAN='\e[1;36m'
export COLOR_LIGHT_GRAY='\e[0;37m'
export COLOR_NC='\e[0m' # No Color
export PS1="\[${COLOR_LIGHT_GRAY}\]\w\[${COLOR_NC}\]\[${COLOR_LIGHT_CYAN}\]\$(__git_ps1 \" %s\")\[${COLOR_NC}\] "
export PS2='> '
export PS3='#? '
export PS4='+ '
