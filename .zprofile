# Preserve MANPATH if you already defined it somewhere in your config.
# Otherwise, fall back to `manpath` so we can inherit from `/etc/manpath`.
NPM_PACKAGES="${HOME}/.npm"
export MANPATH="${MANPATH-$(manpath)}:$NPM_PACKAGES/share/man"
