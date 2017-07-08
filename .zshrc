# aliases
alias ls="ls -ahlp --color"
alias rm="rm -i"
alias sudo="sudo "
alias g="git"

# prompt
source $HOME/.git-prompt.sh
GIT_PS1_SHOWDIRTYSTATE=1
GIT_PS1_SHOWUPSTREAM=1
GIT_PS1_SHOWUNTRACKEDFILES=1
GIT_PS1_SHOWSTASHSTATE=1
setopt PROMPT_SUBST;
PROMPT='%F{green}%n%f@%F{blue}%m%f:%F{yellow}%~%F{red}$(__git_ps1 " (%s)")
%f$ '
RPROMPT='%F{magenta}[%w %T]'

# completions
autoload -Uz compinit
compinit -u
setopt list_packed
zstyle ':completion:*' matcher-list 'm:{a-z}={A-Z}'
zstyle ':completion:*' list-colors ${(s.:.)LS_COLORS}

# history
HISTFILE=~/.zsh_history
HISTSIZE=10000
SAVEHIST=10000
setopt hist_ignore_dups
setopt hist_ignore_all_dups
setopt share_history
