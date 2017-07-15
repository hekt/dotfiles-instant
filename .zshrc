# aliases
alias ls="ls -hlp --color"
alias lsa="ls -ahlp --color"
alias rm="rm -i"
alias sudo="sudo "
alias g="git"
alias reload="source $HOME/.zshrc"

# keybinds
disable r
stty stop undef
stty start undef
bindkey '^r' history-incremental-search-backward
bindkey '^s' history-incremental-search-forward

# git-prompt
source $HOME/.git.d/contrib/git-prompt.sh
GIT_PS1_SHOWDIRTYSTATE=1
GIT_PS1_SHOWUPSTREAM=1
GIT_PS1_SHOWUNTRACKEDFILES=1
GIT_PS1_SHOWSTASHSTATE=1

# prompt
autoload -Uz colors
colors
setopt PROMPT_SUBST;
PROMPT='%(?.%{%F{yellow}(*'\''-'\'')%}.%{%F{red}(;>_<%)%}) %F{green}%n%f@%F{blue}%m%f:%F{yellow}%~ %F{red}$(__git_ps1 "(%s)")
%f$ '
RPROMPT=''
PROMPT2='> '

# completion
autoload -Uz compinit
compinit -u
setopt list_packed
zstyle ':completion:*' matcher-list 'm:{a-z}={A-Z}'
zstyle ':completion:*' list-colors ${(s.:.)LS_COLORS}

# history
export HISTFILE=$HOME/.zsh.d/.zsh_history
export HISTSIZE=1000
export SAVEHIST=100000
setopt hist_expand
setopt hist_ignore_dups
setopt hist_ignore_all_dups
setopt hist_reduce_blanks
setopt hist_verify
setopt inc_append_history
setopt share_history
setopt EXTENDED_HISTORY

# pushd
setopt auto_pushd
setopt pushd_ignore_dups

# anyframe
fpath=($HOME/.zsh.d/anyframe(N-/) $fpath)
autoload -Uz anyframe-init
anyframe-init
if type fzf >/dev/null 2>&1; then
    zstyle ":anyframe:selector:" use fzf

    # search history
    zle -N select-history
    bindkey '^r' anyframe-widget-put-history
    bindkey '^s' anyframe-widget-put-history
fi
