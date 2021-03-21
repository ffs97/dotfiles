install:
	sudo pacman -S --noconfirm xorg xorg-xinit awesome nvidia nvidia-settings nvidia-utils

config:
	rm -f ~/.xinitrc ~/.Xresources
	sudo rm -f /etc/X11/xorg.conf /etc/X11/xorg.conf.d/*

	ln xinitrc ~/.xinitrc
	ln Xresources ~/.Xresources
	sudo ln xorg.conf /etc/X11/
	sudo ln xorg.conf.d/* /etc/X11/xorg.conf.d/
