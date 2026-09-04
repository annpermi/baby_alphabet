#!/bin/zsh

cd "$(dirname "$0")" || exit 1

osascript <<'APPLESCRIPT' >/dev/null 2>&1
tell application "System Events"
  tell process "Terminal"
    set frontmost to true
    delay 0.2
    keystroke "f" using {control down, command down}
  end tell
end tell
APPLESCRIPT

/bin/zsh play.zsh
