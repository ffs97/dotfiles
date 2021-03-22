install:
	git clone https://aur.archlinux.org/picom-git.git picom
	cd picom
	makepkg -Acs --noconfirm
	sudo pacman -U picom-git-*.pkg.tar.zst
	cd ../
	rm -rf picom

config:
	mkdir -p ~/.config/picom
	ln themes/* ~/.config/picom
