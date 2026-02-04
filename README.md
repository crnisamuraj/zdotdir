set ~/.zshenv to source $ZDOTDIR/zshenv

```zsh
#!/bin/zsh
#
# .zshenv - Zsh environment file, loaded always.
#

# NOTE: .zshenv needs to live at ~/.zshenv, not in $ZDOTDIR!
# but we are redirecting it at bottom to kepp zshenv changes in ZDOTDIR

# Set ZDOTDIR to re-home Zsh.
export XDG_CONFIG_HOME=${XDG_CONFIG_HOME:-$HOME/.config}
export XDG_DATA_HOME=${XDG_DATA_HOME:-$HOME/.local/share}
export XDG_CACHE_HOME=${XDG_CACHE_HOME:-$HOME/.cache}
export ZDOTDIR=${ZDOTDIR:-$XDG_CONFIG_HOME/zsh}

# Source zshenv to kepp zshenv changes in ZDOTDIR
[[ -r "$ZDOTDIR/.zshenv" ]] && source "$ZDOTDIR/.zshenv"
```
