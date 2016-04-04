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
alias gca='git commit --amend --verbose'
alias gco='git checkout'
alias gd='git diff'
alias gl='git l'
alias gp='git pull'
alias gpr='git pull --rebase origin master'
alias gr='git r'
alias grm='git branch --merged master | grep -v "\* master" | xargs -n 1 git branch -d'
alias gs='git status'
alias gum="echo 'Resetting master to the latest origin/master...' && git fetch && git update-ref refs/heads/master origin/master"

# set vim as the default editor
export EDITOR='vim'
export VISUAL='vim'

# better mysql prompt
export MYSQL_PS1="\D | \u@\h [\d]> "

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
