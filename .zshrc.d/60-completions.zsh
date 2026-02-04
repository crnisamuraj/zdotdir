# Zsh completions cache dir
cache_dir="${XDG_CACHE_HOME:-$HOME/.cache}/zsh-completions"
mkdir -p "$cache_dir" 2>/dev/null

# Add uv tool completions to fpath
# for d in '~/.local/share/uv/tools/*/share/zsh/site-functions'; do
#   [[ -d "$d" ]] && fpath+=("$d")
# done

# Initialize completion system before sourcing cached completions.
autoload -Uz compinit
compinit


# OpenClaw Completion (cached)
openclaw_cache_file="$cache_dir/openclaw.zsh"

if [[ ! -f "$openclaw_cache_file" ]]; then
  # Silence stderr to avoid instant prompt warnings during cache generation.
  openclaw completion --shell zsh >| "$openclaw_cache_file" 2>/dev/null
fi

source "$openclaw_cache_file"
