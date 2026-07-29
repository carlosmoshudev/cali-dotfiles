# Directory listing presets built on top of lsd.

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

lstree() {
  local depth="${1:-2}"
  local root="${2:-.}"

  lsd --tree --depth "$depth" -- "$root"
}

ltd() {
  local depth="${1:-3}"
  local root="${2:-.}"

  lsd --tree --directory-only --depth "$depth" -- "$root"
}

lstack() {
  local root="${1:-${STACKS_DIR:-$HOME/docker}}"

  lsd -lA --tree --depth 2 -- "$root"
}

lmedia() {
  local root="${1:-${MEDIA:-/data}}"

  lsd -lA -- "$root"
}

llogs() {
  local root="${1:-/var/log}"

  lsd -lA --timesort --date relative -- "$root"
}

lcompose() {
  local root="${1:-${STACKS_DIR:-$HOME/docker}}"

  find "$root" -maxdepth 4 -type f \
    \( -name 'compose.yml' \
       -o -name 'compose.yaml' \
       -o -name 'docker-compose.yml' \
       -o -name 'docker-compose.yaml' \) \
    -print0 2>/dev/null |
    xargs -0 -r lsd -l --date relative --
}

lbroken() {
  local root="${1:-.}"

  find "$root" -xdev -xtype l -print0 2>/dev/null |
    xargs -0 -r lsd -ld --
}

lempty() {
  local root="${1:-.}"

  find "$root" -xdev -empty -print0 2>/dev/null |
    xargs -0 -r lsd -ld --date relative --
}

lchanged() {
  local days="${1:-1}"
  local root="${2:-.}"

  find "$root" -xdev -type f -mtime "-$days" -print0 2>/dev/null |
    xargs -0 -r lsd -ld --timesort --date relative --
}

lworld() {
  local root="${1:-.}"

  find "$root" -xdev \
    \( -type f -o -type d \) \
    -perm -0002 -print0 2>/dev/null |
    xargs -0 -r lsd -ld --permission octal --
}

alias dfh='df -hT -x tmpfs -x devtmpfs -x squashfs'
alias du1='du -xhd1 2>/dev/null | sort -h'
alias dps='docker ps --format "table {{.Names}}\t{{.Status}}\t{{.Ports}}"'
alias dcps='docker compose ps'
alias dcu='docker compose up -d'
alias dcd='docker compose down'
alias dcl='docker compose logs -f --tail=200'
alias ddf='docker system df -v'
alias dtop='docker stats --no-stream'
alias jerr='journalctl -p err..alert -b'
alias jf='journalctl -f'
