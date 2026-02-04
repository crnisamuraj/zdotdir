#!/bin/zsh
#
# .zshenv - Zsh environment file, loaded always.
#
export XDG_CONFIG_HOME=${XDG_CONFIG_HOME:-$HOME/.config}
export XDG_DATA_HOME=${XDG_DATA_HOME:-$HOME/.local/share}
export XDG_CACHE_HOME=${XDG_CACHE_HOME:-$HOME/.cache}
export ZDOTDIR=${ZDOTDIR:-$XDG_CONFIG_HOME/zsh}

# history setup
setopt SHARE_HISTORY
HISTFILE=${ZDOTDIR:-$HOME}/.zhistory
SAVEHIST=10000
HISTSIZE=9999
setopt HIST_EXPIRE_DUPS_FIRST
