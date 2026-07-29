# Directory listing presets built on top of lsd.

alias ls='lsd --group-dirs=first'
alias l='lsd -l --group-dirs=first'
alias ll='lsd -lA --group-dirs=first'
alias la='lsd -a --group-dirs=first'
alias lla='lsd -la --group-dirs=first'

alias l1='lsd -1 --group-directories-first'
alias l1a='lsd -1a --group-directories-first'

alias lt='lsd --tree --depth 2'
alias lt1='lsd --tree --depth 1'
alias lt2='lsd --tree --depth 2'
alias lt3='lsd --tree --depth 3'
alias lta='lsd -a --tree --depth 2'

alias ld='lsd -d */'
alias ltd='lsd --tree --directory-only --depth 3'

alias lnew='lsd -lA --timesort --group-directories-first'
alias lold='lsd -lA --timesort --reverse --group-directories-first'
alias lbig='lsd -lA --sizesort --group-directories-first'
alias lext='lsd -lA --extensionsort --group-directories-first'
alias lver='lsd -lA --versionsort --group-directories-first'

alias lg='lsd -lA --git --group-directories-first'
alias lgg='lsd -lA --gitsort --git --group-directories-first'

alias lperm='lsd -lA --permission octal --group-directories-first'
alias linode='lsd -lAi --group-directories-first'
alias lsize='lsd -lA --size short --group-directories-first'
alias lbytes='lsd -lA --size bytes --group-directories-first'
alias ltotal='lsd -lA --total-size --group-directories-first'

alias ldate='lsd -lA --date date --group-directories-first'
alias lrelative='lsd -lA --date relative --group-directories-first'
alias lfull='lsd -lA --date "+%Y-%m-%d %H:%M:%S" --group-directories-first'

alias llink='lsd -lA --hyperlink auto --group-directories-first'
alias lnolink='lsd -lA --no-symlink --group-directories-first'
alias lsclassic='lsd --classic --color never --icon never'
