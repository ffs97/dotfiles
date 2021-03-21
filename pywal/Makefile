install:
	sudo pacman -S --noconfirm python-wal

config: colorschemes/dark colorschemes/light
	rm -f ~/.config/wal/colorschemes/dark/*
	rm -f ~/.config/wal/colorschemes/light/*
	ln colorschemes/dark/* ~/.config/wal/colorschemes/dark/
	ln colorschemes/light/* ~/.config/wal/colorschemes/light/
