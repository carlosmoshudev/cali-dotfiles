# Firma: cali-dotfiles
export ZSH="$HOME/.oh-my-zsh"
ZSH_THEME="powerlevel10k/powerlevel10k"

plugins=(
  git
  sudo
  z
  fzf
  docker
  zsh-history-substring-search
  zsh-autosuggestions
  colored-man-pages
  extract
  command-not-found
  ssh-agent
  systemd
  sudo
  zsh-interactive-cd
  zsh-syntax-highlighting
)

source "$ZSH/oh-my-zsh.sh"
[[ -f ~/.p10k.zsh ]] && source ~/.p10k.zsh
