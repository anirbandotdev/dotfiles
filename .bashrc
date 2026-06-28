mkcd () {
	mkdir -p "$1" && cd "$1"
}

export ELECTRON_OZONE_PLATFORM_HINT=wayland
export ELECTRON_ENABLE_WAYLAND=1

alias li="exa -l"
alias ff="/home/anirbandotdev/.config/fastfetch/ff.sh"
