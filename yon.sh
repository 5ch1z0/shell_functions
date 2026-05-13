yon() { read -p "${1:-Are you sure} [$([ "${2:-y}" = y ] && echo Y/n || echo y/N)]: " r; r="${r:-${2:-y}}"; [ "$r" = y ]; }
