install:
	sudo pacman -S --noconfirm xorg xorg-xinit awesome nvidia nvidia-settings nvidia-utils xf86-video-intel

config:
	sudo nvidia-xconfig
	ln -f xinitrc ~/.xinitrc
	ln -f Xresources ~/.Xresources
	echo "HandleLidSwitch=ignore" | sudo tee -a /etc/systemd/logind.conf > /dev/null
