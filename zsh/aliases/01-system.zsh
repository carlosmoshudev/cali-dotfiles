# Firma: cali-dotfiles
# System, network, maintenance, disk and journal helpers.

alias df='df -h'
alias du='du -h'
alias dfh='df -hT -x tmpfs -x devtmpfs -x squashfs'
alias upgradable='apt list --upgradable'

update() {
  sudo apt update && sudo apt upgrade "$@"
}

# Show first-level disk usage. Unlike an alias containing a pipe, this function
# correctly accepts a path: du1 /srv
# -x keeps the scan on the same filesystem.
du1() {
  local root="${1:-.}"
  command du -xhd1 -- "$root" 2>/dev/null | sort -h
}

ports() {
  sudo ss -tulpne "$@"
}

myip() {
  curl -fsS --max-time 8 https://api.ipify.org && print
}

weather() {
  local location="${1:-A_Coruna}"
  curl -fsS --max-time 15 "https://wttr.in/${location}?lang=es"
}

alias jerr='journalctl -p err..alert -b'
alias jf='journalctl -f'
