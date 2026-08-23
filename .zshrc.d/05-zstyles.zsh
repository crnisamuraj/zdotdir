# Zstyles for completions, plugins, etc. — must load before antidote and compinit
[[ -f ${ZDOTDIR:-$HOME}/.zstyles ]] && source ${ZDOTDIR:-$HOME}/.zstyles

# Prefer exact-case matches, then fall back to case-insensitive completion.
zstyle ':completion:*' matcher-list '' 'm:{a-zA-Z}={A-Za-z}'
