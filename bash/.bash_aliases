#
# ~/.bash_aliases
#
alias ls='ls -p --color=auto'
alias ll='ls -lh'
alias la='ls -lha'
alias grep='grep --color=auto'

# git
alias gf='git fetch'
alias gst='git status'
alias glog='git log --graph --decorate --oneline'

# confirm before overwriting something
alias cp="cp -i"
alias mv='mv -i'
alias rm='rm -i'

# pacman
alias pacsyu='sudo pacman -Syyu'                 # update only standard pkgs
alias unlock="sudo rm /var/lib/pacman/db.lck"    # remove pacman lock
alias cleanup='sudo pacman -Rns $(pacman -Qtdq)' # remove orphaned packages

# dnf
alias dnfu='sudo dnf update'
alias dnfi='sudo dnf install'

# navigation
alias ..='cd ..'
alias ...='cd ../..'
alias .3='cd ../../..'
alias .4='cd ../../../..'
