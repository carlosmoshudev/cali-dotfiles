# Zsh Aliases

This directory is loaded by `zsh/.zshrc_aliases` in lexical order.

Current layout:
- `00-shell.zsh`: universal shell helpers.
- `01-system.zsh`: system, network, and maintenance helpers.
- `10-navigation.zsh`: directory jumps and workspace shortcuts.
- `11-listing.zsh`: `lsd` presets and directory listing variants.
- `12-comics.zsh`: optional comics workspace helpers, only active when the workspace exists on the host.
- `20-docker-compose.zsh`: Docker Compose shortcuts.
- `21-docker-gluetun.zsh`: container-specific helper functions.

Add new files by concern instead of expanding existing ones. Keep each file small and self-contained.
