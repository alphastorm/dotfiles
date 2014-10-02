# if not running interactively, don't do anything
[ -z "$PS1" ] && return

# set vim as the default editor
export EDITOR="vim"
export VISUAL="vim"

# use vim bindings in the shell
set -o vi

# have the terminal prompt display the current git branch
# https://github.com/jimeh/git-aware-prompt
export GITAWAREPROMPT=~/.bash/git-aware-prompt
source $GITAWAREPROMPT/main.sh
export PS1="\u@\h:\w \[$txtcyn\]\$git_branch\[$txtred\]\$git_dirty\[$txtrst\]\$ "
