#!/usr/bin/env bash

set -euo pipefail

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
chmod +x "$SCRIPT_DIR/play.zsh"
chmod +x "$SCRIPT_DIR/Start Baby Alphabet.command"

cat <<MESSAGE
Baby Alphabet is ready.

Start it with:
  zsh "$SCRIPT_DIR/play.zsh"

Optional shortcut:
  alias babyalphabet='zsh "$SCRIPT_DIR/play.zsh"'

Parent exit while playing:
  press Ctrl-C twice
  press Esc five times
  or close the terminal window
MESSAGE
