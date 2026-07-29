# Comics workspace helpers.
#
# This file stays silent if the comics workspace is not available on the host.
# That lets the same dotfiles repo live on machines that do not mount the
# comics tree or its tools directory.

comic_alias_source=${(%):-%N}
comic_alias_dir=${comic_alias_source:A:h}
comic_alias_root=${comic_alias_dir:A:h}

comic_workspace=""

if [[ -n ${COMICS_WORKSPACE:-} && -d ${COMICS_WORKSPACE:-} && -d "$COMICS_WORKSPACE/tools" ]]; then
  comic_workspace=$COMICS_WORKSPACE
elif [[ -n ${COMICS_ROOT:-} && -d ${COMICS_ROOT:-} && -d "$COMICS_ROOT/tools" ]]; then
  comic_workspace=$COMICS_ROOT
elif [[ -d /srv/media/comics/tools ]]; then
  comic_workspace=/srv/media/comics
elif [[ -d "$comic_alias_root/tools" ]]; then
  comic_workspace=$comic_alias_root
elif [[ -d "$comic_alias_root/../tools" ]]; then
  comic_workspace=${comic_alias_root:A:h}
fi

if [[ -z $comic_workspace ]]; then
  return 0
fi

comic_tools_dir="$comic_workspace/tools"

if [[ ! -f "$comic_tools_dir/cbz_pack_all.sh" ]]; then
  return 0
fi

export COMICS_WORKSPACE="$comic_workspace"
export COMICS_TOOLS_DIR="$comic_tools_dir"

cbr_inspect() {
  bash "$COMICS_TOOLS_DIR/cbr_inspect.sh" "$@"
}

cbr_export() {
  bash "$COMICS_TOOLS_DIR/cbr_export.sh" "$@"
}

cbr_fake() {
  bash "$COMICS_TOOLS_DIR/cbr_fake.sh" "$@"
}

cbz_verify() {
  bash "$COMICS_TOOLS_DIR/cbz_verify.sh" "$@"
}

cbz_pack() {
  bash "$COMICS_TOOLS_DIR/cbz_pack.sh" "$@"
}

cbz_pack_all() {
  bash "$COMICS_TOOLS_DIR/cbz_pack_all.sh" "$@"
}

cbz_flatten() {
  bash "$COMICS_TOOLS_DIR/cbz_flatten.sh" "$@"
}
