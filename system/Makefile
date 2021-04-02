define install_aur
	sudo pacman -S --noconfirm $(1)
endef

define install_git
	git clone https://aur.archlinux.org/$(1).git
	cd $(1); makepkg -is
	rm -rf $(1)
endef

dir:=${HOME}/dotfiles/system

awesome:
	sudo pacman -S --noconfirm feh inotify-tools redshift

wifi:
	sudo pacman -S --noconfirm wpa_supplicant connman dhcpcd
	sudo systemctl enable connman

sound:
	sudo pacman -S --noconfirm pulseaudio python2 asoundconf playerctl alsa-utils
	rm -rf ~/.asoundrc
	asoundconf set-default-card PCH
	echo "defaults.ctl.card PCH" >> ~/.asoundrc
	echo "defaults.pcm.card PCH" >> ~/.asoundrc
	echo -e "blacklist snd_hda_intel\nblacklist snd_hda_codec_hdmi" | sudo tee -a /etc/modprobe.d/blacklist > /dev/null

bluetooth: sound
	sudo pacman -S --noconfirm blueman pulseaudio-bluetooth libappindicator-gtk3
	sudo systemctl start bluetooth

screenshot:
	sudo pacman -S --noconfirm scrot xclip xdotool
	git clone https://aur.archlinux.org/xrectsel.git
	cd xrectsel; makepkg; sudo pacman -U --noconfirm xrectsel-*.tar.zst
	rm -rf kazam xrectsel

fonts:
	ln -sf ${HOME}/dotfiles/system/fonts ~/.local/share/fonts
	fc-cache

cursors:
	sudo pacman -S --noconfirm unzip
	git clone https://aur.archlinux.org/breeze-snow-cursor-theme.git breeze
	cd breeze; makepkg -ic
	rm -rf breeze

icons:
	git clone https://aur.archlinux.org/tela-icon-theme.git tela
	cd tela; makepkg; sudo pacman -U --noconfirm tela-*.tar.zst
	rm -rf tela
	ln -sf ${HOME}/dotfiles/system/icons ~/.icons

gtk:
	sudo pacman -S --noconfirm gtk3 gtk2 arc-gtk-theme

touchpad:
	# $(call install_git,libinput-gestures)
	ln -f ${dir}/touchpad/libinput-gestures.conf ~/.config/
	sudo ln -f ${dir}/touchpad/40-libinput.conf /etc/X11/xorg.conf.d/
