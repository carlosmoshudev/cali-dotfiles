# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# --- Oh My Zsh ---
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
  zsh-syntax-highlighting
)

source $ZSH/oh-my-zsh.sh

# --- Powerlevel10k ---
[[ -f ~/.p10k.zsh ]] && source ~/.p10k.zsh

# --- Quality of life ---
setopt autocd
setopt correct
HISTSIZE=20000
SAVEHIST=20000
HISTFILE=~/.zsh_history
setopt share_history
setopt hist_ignore_dups
setopt hist_reduce_blanks

# --- lsd replaces ls ---
alias ls='lsd'
alias ll='lsd -lah'
alias la='lsd -a'
alias lt='lsd --tree'

# --- bat replaces cat (Ubuntu a veces es batcat) ---
if command -v batcat >/dev/null 2>&1; then
  alias cat='batcat'
  alias bat='batcat'
elif command -v bat >/dev/null 2>&1; then
  alias cat='bat'
fi

# Extras útiles
alias grep='grep --color=auto'
alias df='df -h'
alias du='du -h'
alias ..='cd ..'
alias ...='cd ../..'
alias update='sudo apt update && sudo apt upgrade -y'
alias ports='ss -tulpen'
alias myip='curl ifconfig.me'
alias weather='curl wttr.in'
alias please='sudo $(fc -ln -1)'
alias cls='clear'
alias reload='source ~./zshrc'

# FZF nicer defaults (opcional)
export FZF_DEFAULT_OPTS="--height 40% --layout=reverse --border"
