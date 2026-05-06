# Zsh completions cache dir
cache_dir="${XDG_CACHE_HOME:-$HOME/.cache}/zsh-completions"
mkdir -p "$cache_dir" 2>/dev/null

# Add uv tool completions to fpath
# for d in '~/.local/share/uv/tools/*/share/zsh/site-functions'; do
#   [[ -d "$d" ]] && fpath+=("$d")
# done

# Add Homebrew completions to fpath (macOS)
if [[ -n $HOMEBREW_PREFIX && -d "$HOMEBREW_PREFIX/share/zsh/site-functions" ]]; then
  fpath=("$HOMEBREW_PREFIX/share/zsh/site-functions" $fpath)
fi

# Initialize completion system before sourcing cached completions.
autoload -Uz compinit
zcompdump="${XDG_CACHE_HOME:-$HOME/.cache}/zsh/zcompdump"
# Full init only if dump is missing or older than 24h
if [[ -n $zcompdump(#qN.mh+24) ]]; then
  compinit -d "$zcompdump"
else
  compinit -C -d "$zcompdump"
fi

# OpenClaw Completion (cached)
openclaw_cache_file="$cache_dir/openclaw.zsh"

if [[ ! -f "$openclaw_cache_file" ]]; then
  # Silence stderr to avoid instant prompt warnings during cache generation.
  openclaw completion --shell zsh >| "$openclaw_cache_file" 2>/dev/null
fi

source "$openclaw_cache_file"
