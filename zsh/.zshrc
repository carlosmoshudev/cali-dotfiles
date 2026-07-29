if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

[[ $- != *i* ]] && return

unalias_safe_file="$HOME/.dotfiles/zsh/init/00-unalias-safe.zsh"
if [[ -r "$unalias_safe_file" ]]; then
  source "$unalias_safe_file"
fi

for init_file in "$HOME/.dotfiles/zsh/init"/*.zsh(N); do
  [[ $init_file == "$unalias_safe_file" ]] && continue
  source "$init_file"
done
