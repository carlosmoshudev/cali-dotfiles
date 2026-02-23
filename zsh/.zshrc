if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

[[ $- != *i* ]] && return

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

source $ZSH/oh-my-zsh.sh

[[ -f ~/.p10k.zsh ]] && source ~/.p10k.zsh

setopt autocd
setopt correct

HISTSIZE=20000
SAVEHIST=20000
HISTFILE=~/.zsh_history

setopt share_history
setopt hist_ignore_dups
setopt hist_reduce_blanks

source ~/.dotfiles/zsh/.zshrc_aliases

export FZF_DEFAULT_OPTS="--height 40% --layout=reverse --border"

ZSH_AUTOSUGGEST_STRATEGY=(history completion)
ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE='fg=8'
