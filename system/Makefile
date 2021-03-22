misc:
	sudo pacman -S --noconfirm feh inotify-tools redshift

wifi:
	sudo pacman -S --noconfirm wpa_supplicant connman dhcpcd
	sudo systemctl enable connman

bluetooth:
	sudo pacman -S --noconfirm pulseaudio-bluetooth blueman libappindicator-gtk3
	sudo systemctl start bluetooth

sound:
	sudo pacman -S --noconfirm pulseaudio python2 asoundconf playerctl
	rm -rf ~/.asoundrc
	asoundconf set-default-card PCH
	echo "defaults.ctl.card PCH" >> ~/.asoundrc
	echo "defaults.pcm.card PCH" >> ~/.asoundrc
	echo -e "blacklist snd_hda_intel\nblacklist snd_hda_codec_hdmi" | sudo tee -a /etc/modprobe.d/blacklist > /dev/null
	install ~/.config/awesome/scripts/volume ~/.local/bin/

screenshot:
	sudo pacman -S --noconfirm scrot xclip xdotool
	git clone https://aur.archlinux.org/kazam.git
	cd kazam; makepkg; sudo pacman -U --noconfirm kazam-*.tar.zst
	git clone https://aur.archlinux.org/xrectsel.git
	cd xrectsel; makepkg; sudo pacman -U --noconfirm xrectsel-*.tar.zst
	rm -rf kazam xrectsel

fonts:
	ln -sf ${HOME}/dotfiles/system/fonts ~/.local/share/fonts
	fc-cache

cursors:
	git clone https://aur.archlinux.org/breeze-snow-cursor-theme.git breeze
	cd breeze; makepkg; sudo pacman -U --noconfirm breeze-*.tar.zst
	rm -rf breeze

icons:
	git clone https://aur.archlinux.org/tela-icon-theme.git tela
	cd tela; makepkg; sudo pacman -U --noconfirm tela-*.tar.zst
	rm -rf tela
	ln -sf ${HOME}/dotfiles/system/icons ~/.icons

gtk:
	sudo pacman -S --noconfirm gtk3 gtk2 arc-gtk-theme
