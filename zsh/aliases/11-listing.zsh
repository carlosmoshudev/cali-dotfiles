# Firma: cali-dotfiles
# Directory listing presets built only on top of lsd.

alias ls='lsd'
alias l='lsd -l'
alias ll='lsd -lA'
alias la='lsd -A'
alias lla='lsd -lA'
alias l1='lsd -1A'

alias lt='lsd --tree --depth 2'
alias lt1='lsd --tree --depth 1'
alias lt2='lsd --tree --depth 2'
alias lt3='lsd --tree --depth 3'
alias lta='lsd -A --tree --depth 2'

alias lnew='lsd -lA --timesort'
alias lold='lsd -lA --timesort --reverse'
alias lbig='lsd -lA --sizesort'
alias lsmall='lsd -lA --sizesort --reverse'
alias lext='lsd -lA --extensionsort'
alias lver='lsd -lA --versionsort'

alias lgit='lsd -lA --git'
alias lgits='lsd -lA --git --gitsort'

alias lperm='lsd -lA --permission octal'
alias linode='lsd -lA --blocks inode,permission,links,user,group,size,date,name'
alias llinks='lsd -lA --blocks links,permission,user,group,size,date,name'

alias lbytes='lsd -lA --size bytes'
alias ldirsize='lsd -lA --total-size --sizesort'
alias labsdate='lsd -lA --date "+%Y-%m-%d %H:%M:%S"'

alias lplain='lsd -lA --icon never --color never'

alias dfh='df -hT -x tmpfs -x devtmpfs -x squashfs'
alias du1='du -xhd1 2>/dev/null | sort -h'
