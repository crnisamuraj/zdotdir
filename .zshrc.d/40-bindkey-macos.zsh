[[ "$OSTYPE" == darwin* ]] || return

# Option+Left/Right word jump (iTerm2 xterm sequences)
bindkey '^[[1;3D' backward-word
bindkey '^[[1;3C' forward-word

# substring match on up and down arrow
bindkey '^[[A' history-substring-search-up
bindkey '^[[B' history-substring-search-down

# Option-Backspace: delete word behind cursor
bindkey '^?' backward-kill-word

# Option-Delete: delete word ahead of cursor
bindkey '^[[3;3~' kill-word
