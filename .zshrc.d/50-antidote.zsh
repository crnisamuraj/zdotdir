# Plugin configuration (must be set before antidote loads plugins)
ZSH_AUTOSUGGEST_STRATEGY=(history)

# Antidote - plugin manager
if [[ -n $HOMEBREW_PREFIX && -r $HOMEBREW_PREFIX/opt/antidote/share/antidote/antidote.zsh ]]; then
  source "$HOMEBREW_PREFIX/opt/antidote/share/antidote/antidote.zsh"
elif [[ -r /usr/share/zsh-antidote/antidote.zsh ]]; then
  source /usr/share/zsh-antidote/antidote.zsh
elif [[ -r /usr/share/antidote/antidote.zsh ]]; then
  source /usr/share/antidote/antidote.zsh
elif [[ -r ${ZDOTDIR:-$HOME}/.antidote/antidote.zsh ]]; then
  source "${ZDOTDIR:-$HOME}/.antidote/antidote.zsh"
else
  print -u2 "Error: antidote.zsh was not found; skipping zsh plugin loading."
fi

if (( $+functions[antidote] )); then
  antidote load "${ZDOTDIR:-$HOME}/.zsh_plugins.txt"
else
  print -u2 "Error: antidote was not sourced properly; skipping zsh plugin loading."
fi
