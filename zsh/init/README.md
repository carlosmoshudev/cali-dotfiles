# Zsh Init

These files are sourced by `zsh/.zshrc` in lexical order after the shell is confirmed interactive.

Suggested responsibilities:
- `00-unalias-safe.zsh`: clear common alias collisions before framework loading.
- `01-ohmyzsh.zsh`: framework, theme, and plugins.
- `10-shell.zsh`: shell options and history behavior.
- `20-aliases.zsh`: alias loader.
- `30-fzf.zsh`: fuzzy finder config.
- `40-autosuggest.zsh`: autosuggestion styling.
- `50-path.zsh`: path and environment additions.

Keep each fragment small and single-purpose.
