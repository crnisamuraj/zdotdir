# set NPM_PACKAGES
NPM_PACKAGES="${HOME}/.npm"

# Ensure path arrays do not contain duplicates.
typeset -gU path fpath

# Set the list of directories that zsh searches for commands.
path=(
  ${ASDF_DATA_DIR:-$HOME/.asdf}/shims(N)
  $NPM_PACKAGES/bin(N)
  $HOME/.{,s}bin(N)
  $HOME/.scripts(N)
  $HOME/.local/{,s}bin(N)
  $HOME/Applications(N)
  /usr/local/{,s}bin(N)
  /usr/{,s}bin(N)
  $path
)
