# set NPM_PACKAGES
NPM_PACKAGES="${HOME}/.npm"

# Ensure path arrays do not contain duplicates.
typeset -gU path fpath

# Set the list of directories that zsh searches for commands.
path=(
  ${ASDF_DATA_DIR:-$HOME/.asdf}/shims(N)
  $HOME/.{,s}bin(N)
  $HOME/.scripts(N)
  $HOME/.local/{,s}bin(N)
  $HOME/Applications(N)
  /home/linuxbrew/.linuxbrew/{,s}bin(N)
  $NPM_PACKAGES/bin(N)
  /usr/local/{,s}bin(N)
  /{,s}bin(N)
  /usr/{,s}bin(N)
  $path
)
