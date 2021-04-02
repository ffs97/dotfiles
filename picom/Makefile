install:
	git clone https://aur.archlinux.org/picom-git.git picom
	cd picom; makepkg -ics
	rm -rf picom

config:
	mkdir -p ~/.config/picom
	ln themes/* ~/.config/picom
