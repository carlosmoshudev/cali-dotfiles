# Firma: cali-dotfiles
# Small shell helpers that should be available everywhere.

alias cat='batcat --paging=never'
alias tcat='/bin/cat'
alias bat='batcat'
alias grep='grep --color=auto'

alias cls='clear'
alias reload='source ~/.zshrc'
alias moshu-ipscan="$HOME/scripts/moshu-ipscan"

alias please='sudo $(fc -ln -1)'
