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
  zsh-syntax-highlighting
  colored-man-pages
  extract
  command-not-found
  ssh-agent
  systemd
  sudo
  zsh-interactive-cd
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

alias ls='lsd --group-dirs=first'
alias ll='lsd -lah --group-dirs=first'
alias la='lsd -a --group-dirs=first'
alias lt='lsd --tree --group-dirs=first'
alias cat='batcat --paging=never'
alias bat='batcat'
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
alias reload='source ~/.zshrc'
alias composefiles='cd /srv/docker/compose && ls'

export FZF_DEFAULT_OPTS="--height 40% --layout=reverse --border"

ZSH_AUTOSUGGEST_STRATEGY=(history completion)
ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE='fg=8'
