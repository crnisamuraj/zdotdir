# Lazy-load fzf on first use of Ctrl-R.
if (( $+commands[fzf] )); then
  _fzf_init_once() {
    # Load fzf keybindings/widgets
    eval "$(fzf --zsh)"
    # Rebind Ctrl-R to the real fzf widget after init
    bindkey '^R' fzf-history-widget
    # Remove this loader to avoid repeated init
    unfunction _fzf_init_once

    # Invoke fzf immediately on first press
    zle fzf-history-widget
  }

  # First Ctrl-R triggers init, then rebinds to fzf widget.
  zle -N _fzf_init_once
  bindkey '^R' _fzf_init_once
else
  bindkey '^R' history-incremental-search-backward
fi
