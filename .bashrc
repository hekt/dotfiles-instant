# hekt/dotfiles-instant/.bashrc definitions
# https://github.com/hekt/dotfiles-instant/blob/master/.bashrc

# git
source $HOME/.git.d/contrib/git-completion.bash
source $HOME/.git.d/contrib/git-prompt.sh
GIT_PS1_SHOWDIRTYSTATE=1
GIT_PS1_SHOWUPSTREAM=1
GIT_PS1_SHOWUNTRACKEDFILES=1
GIT_PS1_SHOWSTASHSTATE=1
__git_complete g __git_main

# aliases
alias ls="ls -hlp --color"
alias lsa="ls -ahlp --color"
alias rm="rm -i"
alias sudo="sudo "
alias g="git"
alias n="npm"
alias nr="npm run"

# propmpt
export PS1='\[\033[35m\][\D{%a %H:%M}] \[\033[32m\]\u\[\033[00m\]@\[\033[34m\]\H \[\033[33m\]\w\[\033[1;31m\]$(__git_ps1)\[\033[00m\]\n$ '
