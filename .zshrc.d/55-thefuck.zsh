# Initialize The Fuck's shell alias when installed.
if (( $+commands[thefuck] )); then
  eval "$(thefuck --alias)"
fi
