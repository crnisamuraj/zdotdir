# ctrl left and right word jump
bindkey "^[[1;5D" backward-word
bindkey "^[[1;5C" forward-word

# substring match on up and down arrow
bindkey '^[[A' history-substring-search-up
bindkey '^[[B' history-substring-search-down

# Ctrl-Backspace: delete word behind cursor
bindkey '^H' backward-kill-word

# Ctrl-Delete: delete word ahead of cursor
bindkey '^[[3;5~' kill-word
