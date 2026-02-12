### Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
### Initialization code that may require console input (password prompts, [y/n]
### confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi


ZSH_AUTOSUGGEST_STRATEGY=(history)

# # Source anything in .zshrc.d.
if [ -d ${ZDOTDIR:-$HOME}/.zshrc.d ]; then
  for _rc in ${ZDOTDIR:-$HOME}/.zshrc.d/*.zsh; do
    # Ignore tilde files.
    if [[ $_rc:t != '~'* ]]; then
      source "$_rc"
    fi
  done
  unset _rc
fi

# Antidote bootstrap (interactive shells only).
if [[ -o interactive ]]; then

  if [[ -n $HOMEBREW_PREFIX && -d $HOMEBREW_PREFIX/opt/antidote/share/antidote ]]; then
    source $HOMEBREW_PREFIX/opt/antidote/share/antidote/antidote.zsh
  elif [[ -d ${ZDOTDIR:-$HOME}/.antidote ]]; then
    source ${ZDOTDIR:-$HOME}/.antidote/antidote.zsh
  fi

  antidote load ${ZDOTDIR:-$HOME}/.zsh_plugins.txt
fi

# Set any zstyles you might use for configuration.
[[ ! -f ${ZDOTDIR:-$HOME}/.zstyles ]] || source ${ZDOTDIR:-$HOME}/.zstyles

### To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ${ZDOTDIR:-$HOME}/.p10k.zsh ]] || source ${ZDOTDIR:-$HOME}/.p10k.zsh
