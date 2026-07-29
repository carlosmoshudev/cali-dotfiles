if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

[[ $- == *i* ]] || return

_load_zsh_init() {
  local init_dir="$HOME/.dotfiles/zsh/init"
  local unalias_file="$init_dir/00-unalias-safe.zsh"
  local init_file

  [[ -r "$unalias_file" ]] && source "$unalias_file"

  for init_file in "$init_dir"/*.zsh(N); do
    [[ "$init_file" == "$unalias_file" ]] && continue
    source "$init_file"
  done
}

_load_zsh_init
unfunction _load_zsh_init
