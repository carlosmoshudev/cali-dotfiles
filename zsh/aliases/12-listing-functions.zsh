# Directory listing helper functions built on top of lsd.

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

alias dps='docker ps --format "table {{.Names}}\t{{.Status}}\t{{.Ports}}"'
alias dcps='docker compose ps'
alias dcu='docker compose up -d'
alias dcd='docker compose down'
alias dcl='docker compose logs -f --tail=200'
alias ddf='docker system df -v'
alias dtop='docker stats --no-stream'
alias jerr='journalctl -p err..alert -b'
alias jf='journalctl -f'
