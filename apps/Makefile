define install_aur
	sudo pacman -S --noconfirm $(1)
endef

define install_git
	git clone https://aur.archlinux.org/$(1).git
	cd $(1); makepkg -is
	rm -rf $(1)
endef

webcam:
	sudo pacman -S --noconfirm cheese
	
meeting:
	$(call install_git,skypeforlinux-stable-bin)

files:
	sudo pacman -S --noconfirm nautilus

monitor:
	sudo pacman -S --noconfirm htop

paint:
	$(call install_aur,gimp)

notes:
	$(call install_git,joplin-appimage)
	$(call install_git,drawio-desktop-bin)

pdf:
	$(call install_aur,evince zathura zathura-pdf-mupdf)
	mkdir -p ~/.config/zathura
	wal --theme `cat /home/fat-fighter/.theme` -o ${HOME}/.config/awesome/scripts/theme-config

settings:
	sudo pacman -S --noconfirm lxappearance pavucontrol
	git clone https://aur.archlinux.org/connman-gtk.git
	cd connman-gtk; makepkg; sudo pacman -U --noconfirm connman-gtk-*.tar.zst
	rm -rf connman-gtk

dropbox:
	$(call install_aur,nautilus)
	$(call install_git,dropbox)
	$(call install_git,dropbox-nautilus)

keyring:
	sudo pacman -S --noconfirm gnome-keyring libsecret seahorse

mail: keyring
	git clone https://aur.archlinux.org/mailspring.git ms
	cd ms; makepkg -is
	rm -rf ms
	ln -f ${HOME}/dotfiles/apps/mailspring/* ~/.config/Mailspring

visualizer:
	git clone https://aur.archlinux.org/cava.git
	cd cava; makepkg -is
	rm -rf cava
	ln -f ${HOME}/dotfiles/apps/cava/config ~/.config/cava/confign -f ${HOME}/dotfiles/apps/cava/config ~/.config/cava/config

browser:
	sudo pacman -S --noconfirm libmpeg2
	git clone https://aur.archlinux.org/yandex-browser-beta.git yandex
	cd yandex; makepkg -is
	rm -rf yandex

music:
	sudo pacman -S --noconfirm fuse
	git clone https://aur.archlinux.org/youtube-music-bin.git yt
	cd yt; makepkg -is
	rm -rf yt

all: webcam files monitor settings dropbox mail
	ln -sf ${HOME}/dotfiles/apps/applications ~/.local/share/
