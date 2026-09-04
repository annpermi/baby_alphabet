#!/bin/zsh

ESC=$'\033'
last_ctrl_c=0
esc_count=0

animal_for() {
  case "$1" in
    A) echo "Alligator" ;; B) echo "Bear" ;; C) echo "Cat" ;; D) echo "Dog" ;;
    E) echo "Elephant" ;; F) echo "Fox" ;; G) echo "Giraffe" ;; H) echo "Horse" ;;
    I) echo "Iguana" ;; J) echo "Jaguar" ;; K) echo "Kangaroo" ;; L) echo "Lion" ;;
    M) echo "Monkey" ;; N) echo "Narwhal" ;; O) echo "Owl" ;; P) echo "Penguin" ;;
    Q) echo "Quail" ;; R) echo "Rabbit" ;; S) echo "Snake" ;; T) echo "Tiger" ;;
    U) echo "Unicorn" ;; V) echo "Vulture" ;; W) echo "Whale" ;; X) echo "Xerus" ;;
    Y) echo "Yak" ;; Z) echo "Zebra" ;;
  esac
}

emoji_for() {
  case "$1" in
    A) echo "🐊" ;; B) echo "🐻" ;; C) echo "🐱" ;; D) echo "🐶" ;;
    E) echo "🐘" ;; F) echo "🦊" ;; G) echo "🦒" ;; H) echo "🐎" ;;
    I) echo "🦎" ;; J) echo "🐆" ;; K) echo "🦘" ;; L) echo "🦁" ;;
    M) echo "🐵" ;; N) echo "🐋" ;; O) echo "🦉" ;; P) echo "🐧" ;;
    Q) echo "🐦" ;; R) echo "🐰" ;; S) echo "🐍" ;; T) echo "🐯" ;;
    U) echo "🦄" ;; V) echo "🦅" ;; W) echo "🐳" ;; X) echo "🐿" ;;
    Y) echo "🐂" ;; Z) echo "🦓" ;;
  esac
}

color_name_for() {
  case "$1" in
    A) echo "amber" ;; B) echo "blue" ;; C) echo "cyan" ;;
    D) echo "denim" ;; E) echo "emerald" ;; F) echo "fuchsia" ;;
    G) echo "green" ;; H) echo "honey" ;; I) echo "indigo" ;;
    J) echo "jade" ;; K) echo "khaki" ;; L) echo "lime" ;;
    M) echo "magenta" ;; N) echo "navy" ;; O) echo "orange" ;;
    P) echo "pink" ;; Q) echo "quartz" ;; R) echo "red" ;;
    S) echo "silver" ;; T) echo "turquoise" ;; U) echo "umber" ;;
    V) echo "violet" ;; W) echo "white" ;; X) echo "xanthic" ;;
    Y) echo "yellow" ;; Z) echo "zaffre" ;;
  esac
}

color_code_for() {
  case "$1" in
    black) echo "30" ;; red) echo "31" ;; green) echo "32" ;; yellow) echo "33" ;;
    blue) echo "34" ;; magenta) echo "35" ;; cyan) echo "36" ;; white) echo "37" ;;
    amber) echo "33" ;; denim) echo "34" ;; emerald) echo "32" ;; fuchsia) echo "95" ;;
    honey) echo "93" ;; indigo) echo "94" ;; jade) echo "92" ;; khaki) echo "93" ;;
    lime) echo "92" ;; navy) echo "34" ;; orange) echo "91" ;; pink) echo "95" ;;
    quartz) echo "97" ;; silver) echo "37" ;; turquoise) echo "96" ;; umber) echo "33" ;;
    violet) echo "95" ;; xanthic) echo "93" ;; zaffre) echo "94" ;;
    "bright black") echo "90" ;; "bright red") echo "91" ;;
    "bright green") echo "92" ;; "bright yellow") echo "93" ;;
    "bright blue") echo "94" ;; "bright magenta") echo "95" ;;
    "bright cyan") echo "96" ;; "bright white") echo "97" ;;
  esac
}

pattern_for() {
  case "$1" in
    A) print -l "  ##  " " #  # " "#    #" "######" "#    #" "#    #" "#    #" ;;
    B) print -l "##### " "#    #" "#    #" "##### " "#    #" "#    #" "##### " ;;
    C) print -l " #### " "#    #" "#     " "#     " "#     " "#    #" " #### " ;;
    D) print -l "##### " "#    #" "#    #" "#    #" "#    #" "#    #" "##### " ;;
    E) print -l "######" "#     " "#     " "##### " "#     " "#     " "######" ;;
    F) print -l "######" "#     " "#     " "##### " "#     " "#     " "#     " ;;
    G) print -l " #### " "#    #" "#     " "#  ###" "#    #" "#    #" " #### " ;;
    H) print -l "#    #" "#    #" "#    #" "######" "#    #" "#    #" "#    #" ;;
    I) print -l "######" "  ##  " "  ##  " "  ##  " "  ##  " "  ##  " "######" ;;
    J) print -l "######" "    # " "    # " "    # " "    # " "#   # " " ###  " ;;
    K) print -l "#    #" "#   # " "#  #  " "###   " "#  #  " "#   # " "#    #" ;;
    L) print -l "#     " "#     " "#     " "#     " "#     " "#     " "######" ;;
    M) print -l "#    #" "##  ##" "# ## #" "#    #" "#    #" "#    #" "#    #" ;;
    N) print -l "#    #" "##   #" "# #  #" "#  # #" "#   ##" "#    #" "#    #" ;;
    O) print -l " #### " "#    #" "#    #" "#    #" "#    #" "#    #" " #### " ;;
    P) print -l "##### " "#    #" "#    #" "##### " "#     " "#     " "#     " ;;
    Q) print -l " #### " "#    #" "#    #" "#    #" "#  # #" "#   # " " ### #" ;;
    R) print -l "##### " "#    #" "#    #" "##### " "#  #  " "#   # " "#    #" ;;
    S) print -l " #### " "#    #" "#     " " #### " "     #" "#    #" " #### " ;;
    T) print -l "######" "  ##  " "  ##  " "  ##  " "  ##  " "  ##  " "  ##  " ;;
    U) print -l "#    #" "#    #" "#    #" "#    #" "#    #" "#    #" " #### " ;;
    V) print -l "#    #" "#    #" "#    #" "#    #" " #  # " " #  # " "  ##  " ;;
    W) print -l "#    #" "#    #" "#    #" "#    #" "# ## #" "##  ##" "#    #" ;;
    X) print -l "#    #" " #  # " " #  # " "  ##  " " #  # " " #  # " "#    #" ;;
    Y) print -l "#    #" " #  # " " #  # " "  ##  " "  ##  " "  ##  " "  ##  " ;;
    Z) print -l "######" "    # " "   #  " "  #   " " #    " "#     " "######" ;;
  esac
}

cleanup() {
  stty sane 2>/dev/null
  printf '%b' "${ESC}[?25h${ESC}[?1049l${ESC}[0m"
  clear
  echo "Thanks for playing!"
}

on_interrupt() {
  local now
  now=$(date +%s)
  if ((now - last_ctrl_c <= 2)); then
    exit 0
  fi
  last_ctrl_c=$now
}

screen_size() {
  local size
  size="$(stty size 2>/dev/null)"
  if [[ "$size" == <->" "<-> ]]; then
    rows="${size%% *}"
    cols="${size##* }"
  else
    rows=$(tput lines 2>/dev/null || echo 24)
    cols=$(tput cols 2>/dev/null || echo 80)
  fi
}

repeat_char() {
  local char="$1"
  local count="$2"
  local out=""
  local i
  for ((i = 0; i < count; i++)); do
    out="${out}${char}"
  done
  printf '%s' "$out"
}

trim_right() {
  local text="$1"
  while [[ "$text" == *[[:space:]] ]]; do
    text="${text[1,-2]}"
  done
  print -r -- "$text"
}

center_line() {
  local text="$(trim_right "$1")"
  local width=${#text}
  local pad=$(((cols - width) / 2))
  ((pad < 0)) && pad=0
  printf '%*s%s\n' "$pad" "" "$text"
}

word_art_lines() {
  local word="$1"
  local -a output char_lines
  local letter i row

  output=("" "" "" "" "" "" "")
  for ((i = 1; i <= ${#word}; i++)); do
    letter="${word[i]:u}"
    char_lines=("${(@f)$(pattern_for "$letter")}")
    for row in {1..7}; do
      output[$row]="${output[$row]}${char_lines[$row]}  "
    done
  done

  print -l "${output[@]}"
}

scaled_art_lines() {
  local source="$1"
  local scale_x="$2"
  local scale_y="$3"
  local -a source_lines
  local row char expanded i sy

  source_lines=("${(@f)source}")
  for row in "${source_lines[@]}"; do
    expanded=""
    for ((i = 1; i <= ${#row}; i++)); do
      char="${row[i]}"
      if [[ "$char" == "#" ]]; then
        expanded="${expanded}$(repeat_char "█" "$scale_x")"
      else
        expanded="${expanded}$(repeat_char " " "$scale_x")"
      fi
    done
    for ((sy = 0; sy < scale_y; sy++)); do
      print -r -- "$expanded"
    done
  done
}

print_centered_block() {
  local block="$1"
  local color_code="$2"
  local -a lines
  local line pad max_width

  lines=("${(@f)block}")
  max_width=0
  for line in "${lines[@]}"; do
    line="$(trim_right "$line")"
    ((${#line} > max_width)) && max_width=${#line}
  done

  pad=$(((cols - max_width) / 2))
  ((pad < 0)) && pad=0

  printf '%b' "${ESC}[1;${color_code}m"
  for line in "${lines[@]}"; do
    line="$(trim_right "$line")"
    printf '%*s%s\n' "$pad" "" "$line"
  done
  printf '%b' "${ESC}[0m"
}

draw_letter() {
  local letter="$1"
  local color_name="$(color_name_for "$letter")"
  local color_code="$(color_code_for "$color_name")"
  local animal="$(animal_for "$letter")"
  local emoji="$(emoji_for "$letter")"
  local letter_width=6
  local word_width=$(((${#animal} * 8) - 2))
  local available_rows=$((rows - 4))
  local letter_scale_x=$((cols / 9))
  local letter_scale_y=$((available_rows / 18))
  local word_scale_x=$((cols / (word_width + 2)))
  local word_scale_y=$((available_rows / 18))

  ((letter_scale_x < 1)) && letter_scale_x=1
  ((letter_scale_y < 1)) && letter_scale_y=1
  ((word_scale_x < 1)) && word_scale_x=1
  ((word_scale_y < 1)) && word_scale_y=1

  local letter_block="$(scaled_art_lines "$(pattern_for "$letter")" "$letter_scale_x" "$letter_scale_y")"
  local word_block="$(scaled_art_lines "$(word_art_lines "$animal")" "$word_scale_x" "$word_scale_y")"
  local caption_rows=3
  local spacer_rows=3
  local used_rows=$((7 * letter_scale_y + 7 * word_scale_y + caption_rows + spacer_rows))
  local top_padding=$(((rows - used_rows) / 2))
  ((top_padding < 0)) && top_padding=0

  printf '%b' "${ESC}[2J${ESC}[H${ESC}[1;${color_code}m"
  local i
  for ((i = 0; i < top_padding; i++)); do
    printf '\n'
  done

  print_centered_block "$letter_block" "$color_code"
  printf '\n'
  print_centered_block "$word_block" "$color_code"
  printf '\n'
  printf '%b' "${ESC}[1;${color_code}m"
  center_line "$letter is for $animal"
  center_line "$letter is ${color_name:u}"
  center_line "$emoji"
  printf '%b' "${ESC}[0m"
  printf '\n'
}

draw_welcome() {
  screen_size
  printf '%b' "${ESC}[2J${ESC}[H${ESC}[1;96m"
  center_line "BABY ALPHABET"
  printf '%b\n' "${ESC}[0m"
  center_line "Press any letter from A to Z"
  center_line "The game will fill this screen with color"
  printf '\n'
  center_line "Parent exit: press Ctrl-C twice, press Esc five times, or close the terminal"
}

handle_key() {
  local key="$1"

  if [[ "$key" == $'\033' ]]; then
    esc_count=$((esc_count + 1))
    if ((esc_count >= 5)); then
      exit 0
    fi
    return
  fi
  esc_count=0

  if [[ "$key" == [A-Za-z] ]]; then
    draw_letter "${key:u}"
  fi
}

main() {
  trap cleanup EXIT
  trap on_interrupt INT
  trap '' TSTP

  printf '%b' "${ESC}[?1049h${ESC}[?25l"
  stty -echo -icanon min 0 time 1
  draw_welcome

  local key
  while true; do
    screen_size
    if read -rs -k 1 key; then
      handle_key "$key"
    fi
  done
}

main "$@"
