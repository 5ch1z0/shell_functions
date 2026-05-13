# Shell functiosn to use in scripts...



### YesOrNo
This returns false when `n` and true when `y` and you can add a custom prompt.
```sh
yon() { read -p "${1:-Are you sure} [$([ "${2:-y}" = y ] && echo Y/n || echo y/N)]: " r; r="${r:-${2:-y}}"; [ "$r" = y ]; }
```
Usage:
```sh
yon "Do you want to continue?"
# result: "Do you want to continue? [y/N]: "

yon "Delete temp files from current script" "y"
# result: "Delete temp files from current script [Y/n]: "
```
