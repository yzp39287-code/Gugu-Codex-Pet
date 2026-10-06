#!/usr/bin/env sh
set -eu
SCRIPT_DIR=$(CDPATH= cd -- "$(dirname -- "$0")" && pwd)
SOURCE="$SCRIPT_DIR/pets/gugu"
CODEX_DIR="${CODEX_HOME:-$HOME/.codex}"
TARGET="$CODEX_DIR/pets/gugu"

mkdir -p "$TARGET"
cp "$SOURCE/pet.json" "$TARGET/pet.json"
cp "$SOURCE/spritesheet.webp" "$TARGET/spritesheet.webp"

printf 'Gugu installed to: %s\n' "$TARGET"
printf 'Open/restart Codex, then select 咕咕 Gugu from the Pets settings.\n'
