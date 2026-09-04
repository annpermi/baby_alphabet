# Baby Alphabet

A full-screen terminal alphabet game for babies and toddlers. Press any letter
and the screen fills with a huge colorful letter, a matching animal word, a
same-letter color, and a small animal icon.

https://github.com/user-attachments/assets/2dba04c0-9312-43b5-acec-1614df7084f4



## What It Does

- Runs in a normal macOS terminal.
- Responds to any `A-Z` key.
- Shows a giant block letter.
- Shows a giant animal word, like `DOG`.
- Teaches a same-letter color, like `D is DENIM`.
- Keeps random typing inside the game screen until a parent exits.

## Start

From this folder, run the install helper once:

```bash
./install.sh
```

Then start the game:

```bash
/bin/zsh play.zsh
```

On macOS, you can also double-click `Start Baby Alphabet.command`.

You can also add the shortcut printed by the installer to your shell profile if
you want to launch it with `babyalphabet`.

## Parent Exit

While the game is running, exit with any of these:

- Press `Ctrl-C` twice quickly
- Press `Esc` five times
- Close the terminal window

## Baby-Safe Notes

The game takes over the terminal screen, hides typed input, and ignores normal
shell commands until the parent exits. This helps keep random key presses inside
the game.

A terminal script cannot fully lock macOS or prevent system shortcuts such as
switching apps, closing windows, or opening system dialogs. For extra safety,
run the game in a separate full-screen terminal window and keep important apps
closed or locked.

## Why I Made It

I wanted a tiny, zero-dependency way for my baby to safely interact with my
computer when he is nearby. Instead of random keystrokes doing something
dangerous, every letter becomes a bright learning moment.
