# Plugin configuration (must be set before antidote loads plugins)
ZSH_AUTOSUGGEST_STRATEGY=(history)

# Antidote - plugin manager
if [[ -n $HOMEBREW_PREFIX && -d $HOMEBREW_PREFIX/opt/antidote/share/antidote ]]; then
  source $HOMEBREW_PREFIX/opt/antidote/share/antidote/antidote.zsh
elif [[ -d ${ZDOTDIR:-$HOME}/.antidote ]]; then
  source ${ZDOTDIR:-$HOME}/.antidote/antidote.zsh
fi

antidote load ${ZDOTDIR:-$HOME}/.zsh_plugins.txt
