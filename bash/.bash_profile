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

# Homebrew
PATH="/usr/local/bin:$PATH"
if [ -f "$(brew --prefix)/etc/bash_completion" ]; then
    . "$(brew --prefix)/etc/bash_completion"
fi
[[ -f ~/.homebrew_api_token ]] && . ~/.homebrew_api_token

# Setup rbenv
eval "$(rbenv init -)"

# postgres command line utils
PATH="$PATH:/Applications/Postgres.app/Contents/Versions/latest/bin"
