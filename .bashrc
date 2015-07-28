# This is Sunil Srivatsa's .bashrc file

# if not running interactively, don't do anything
[ -z "$PS1" ] && return

# set up promptline.vim
. ~/.shell_prompt.sh

# set up z: https://github.com/rupa/z
. ~/.z.sh

# git autocompletion
. ~/.git-completion.bash
__git_complete gco _git_checkout

# git aliases
alias gaa='git add --all'
alias gc='git commit --verbose'
alias gco='git checkout'
alias gd='git diff'
alias gl='git l'
alias gp='git pull'
alias gr='git r'
alias grm='git branch --merged master | grep -v "\* master" | xargs -n 1 git branch -d'
alias gs='git status'
alias gum="echo 'Resetting master to the latest origin/master...' && git fetch && git update-ref refs/heads/master origin/master"

# server aliases
alias aws10='ssh hduser@relcy-aws10'
alias aws8='ssh hduser@relcy-aws8'
alias p0='ssh hduser@relcy-p0'
alias r0='ssh hduser@relcy-r0'

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

# append to the history file when exiting instead of overwriting it
shopt -s histappend
