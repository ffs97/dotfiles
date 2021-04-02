install:
	sudo pacman -S --noconfirm python-pywal

config:
	rm -f ~/.config/wal/colorschemes/dark/*
	rm -f ~/.config/wal/colorschemes/light/*
	mkdir -p ~/.config/wal/colorschemes/dark
	mkdir -p ~/.config/wal/colorschemes/light
	ln -f ${HOME}/dotfiles/pywal/colorschemes/dark/* ~/.config/wal/colorschemes/dark/
	ln -f ${HOME}/dotfiles/pywal/colorschemes/light/* ~/.config/wal/colorschemes/light/
