#   -----------------------------
#   1.  MAKE TERMINAL BETTER
#   -----------------------------

alias cp='cp -iv'                           # Preferred 'cp' implementation
alias mv='mv -iv'                           # Preferred 'mv' implementation
alias mkdir='mkdir -pv'                     # Preferred 'mkdir' implementation
alias ll='ls -laFh'                         # Preferred 'ls' implementation
alias less='less -FSRXc'                    # Preferred 'less' implementation
alias nano='nano -W'                        # Preferred 'nano' implementation
alias wget='wget -c'                        # Preferred 'wget' implementation (resume download)
alias c='clear'                             # c:            Clear terminal display
alias path='echo -e ${PATH//:/\\n}'         # path:         Echo all executable Paths
alias fix_stty='stty sane'                  # fix_stty:     Restore terminal settings when screwed up
alias fix_term='echo -e "\033c"'            # fix_term:     Reset the conosle.  Similar to the reset command
alias cic='set completion-ignore-case On'   # cic:          Make tab-completion case-insensitive
alias srczshrc='source ~/.config/.zshrc'    # src:          Reload .zshrc file

alias edit='nano'
alias root-systemsettings5='pkexec env DISPLAY=$DISPLAY XAUTHORITY=$XAUTHORITY KDE_SESSION_VERSION=5 KDE_FULL_SESSION=true dbus-launch systemsettings5'
alias root-systemsettings6='pkexec env DISPLAY=$DISPLAY XAUTHORITY=$XAUTHORITY KDE_SESSION_VERSION=6 KDE_FULL_SESSION=true dbus-launch systemsettings'

alias gearlever='flatpak run it.mijorus.gearlever'

alias zed='zeditor'

alias switch-monitor-usbc="ddcutil -d 1 setvcp 60 0x10"
alias switch-monitor-dp="ddcutil -d 1 setvcp 60 0x0f"
alias switch-monitor-hdmi="ddcutil -d 1 setvcp 60 0x11"
