[[ -f ~/.bashrc ]] && . ~/.bashrc

# Some ls aliases
alias ll='ls -halF'
alias la='ls -hA'
alias l='ls -hCF'

# Of course
export EDITOR=vim

# Enable colourized output
export CLICOLOR=1

PATH="$HOME/bin:$PATH"
PATH="/usr/local/bin:$PATH"
