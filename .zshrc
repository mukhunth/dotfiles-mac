# ~/.zshrc

export PATH="$PATH:/Users/mukhunth/.local/bin"

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

# SETTINGS
bindkey -v
export KEYTIMEOUT=1
bindkey -M viins '^?' backward-delete-char
bindkey -M viins '^H' backward-delete-char

autoload -Uz compinit && compinit
zstyle ':completion:*' menu select
setopt appendhistory
setopt sharehistory
setopt histignorealldups
export HISTFILE=$HOME/.zsh_history
export HISTSIZE=1000000000
export SAVEHIST=1000000000

# KEYBINDINGS
autoload -Uz up-line-or-beginning-search down-line-or-beginning-search
zle -N up-line-or-beginning-search
zle -N down-line-or-beginning-search
bindkey "^[[A" up-line-or-beginning-search
bindkey "^[[B" down-line-or-beginning-search

autoload -U run-help
bindkey '^H' run-help

autoload -Uz edit-command-line
zle -N edit-command-line
bindkey -M vicmd v edit-command-line

bindkey '^L' clear-screen

# PROMPT
PROMPT='%F{#00d600}%n@%m %~ %# %f'
#eval "$(oh-my-posh init zsh --config $HOME/.config/ohmyposh.toml)"
#eval "$(starship init zsh)"

# ALIASES

# Core
alias ls='ls -Gh'
alias grep='grep --color=auto'
alias cp='cp -i'
alias mv='mv -i'
alias python='python3'
alias pip='pip3'

# Configs
alias config='git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME'
alias cfz='vim ~/.zshrc'
alias cfv='vim ~/.vimrc'
