[[ "$OSTYPE" == darwin* ]] || return

alias tailscale='TAILSCALE_BE_CLI=1 /Applications/Tailscale.app/Contents/MacOS/Tailscale'

#   -----------------------------
#   1.  MAKE TERMINAL BETTER
#   -----------------------------

alias cp='cp -iv'                                               # Preferred 'cp' implementation
alias mv='mv -iv'                                               # Preferred 'mv' implementation
alias mkdir='mkdir -pv'                                         # Preferred 'mkdir' implementation
alias ll='ls -laFh'                                             # Preferred 'ls' implementation
alias less='less -FSRXc'                                        # Preferred 'less' implementation
alias wget='wget -c'                                            # Preferred 'wget' implementation (resume download)
alias c='clear'                                                 # c:            Clear terminal display
alias path='echo -e ${PATH//:/\\n}'                             # path:         Echo all executable Path
