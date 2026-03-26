# zsh config

Cross-platform Zsh configuration using Powerlevel10k, structured under `$XDG_CONFIG_HOME/zsh`.

## macOS Setup

### 1. Install the font

Powerlevel10k requires a patched Nerd Font for icons and prompt glyphs to render correctly.

```zsh
brew install --cask font-meslo-for-powerlevel10k
```

#### Set the font in your terminal

**iTerm2:** Preferences → Profiles → Text → Font → select `MesloLGS NF`

**Terminal.app:** Preferences → Profiles → (your profile) → Change Font → select `MesloLGS NF`

Restart your terminal after changing the font.

### 2. Clone the repo

```zsh
git clone https://github.com/crnisamuraj/zdotdir.git ~/.config/zsh
```

### 3. Set up `~/.zshenv`

Create `~/.zshenv` with the following content. This is the only file that must live outside `$ZDOTDIR` — it bootstraps the config by pointing Zsh to the right location.

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

### 4. Configure the prompt

Open a new terminal session. Powerlevel10k will launch its interactive configuration wizard automatically. If it doesn't, run:

```zsh
p10k configure
```
