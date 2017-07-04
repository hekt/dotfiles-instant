# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

# User specific aliases and functions

# git
source $HOME/.git-completion.bash
source $HOME/.git-prompt.sh
GIT_PS1_SHOWDIRTYSTATE=1
GIT_PS1_SHOWUPSTREAM=1
GIT_PS1_SHOWUNTRACKEDFILES=1
GIT_PS1_SHOWSTASHSTATE=1
__git_complete g __git_main

# aliases
alias ls="ls -ahlp --color"
alias rm="rm -i"
alias sudo="sudo "
alias g="git"
alias n="npm"
alias nr="npm run"

# propmpt
export PS1='\[\033[35m\][\D{%a %H:%M}] \[\033[32m\]\u\[\033[00m\]@\[\033[34m\]\H \[\033[33m\]\w\[\033[1;31m\]$(__git_ps1)\[\033[00m\]\n$ '
