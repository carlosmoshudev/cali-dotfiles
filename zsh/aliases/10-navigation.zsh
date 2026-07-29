# Firma: cali-dotfiles
# Fast directory jumps and workspace shortcuts.

alias ..='cd .. && ll'
alias ...='cd ../.. && ll'
alias ....='cd ../../.. && ll'
alias .....='cd ../../../.. && ll'

_zjump() {
  local base="$1"
  shift
  local destination="$base"

  [[ $# -gt 0 ]] && destination="$base/$1"
  cd -- "$destination" || return
  clear
  ll
}

composefiles() { _zjump "${STACKS_DIR:-/srv/containers/pro}" "$@"; }
srv()          { _zjump /srv "$@"; }
server()       { srv "$@"; }
comics()       { _zjump "${COMICS_WORKSPACE:-/srv/media/comics}" "$@"; }
home()         { _zjump "$HOME" "$@"; }
media()        { _zjump "${MEDIA:-/srv/media}" "$@"; }
