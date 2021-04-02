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
	$(call install_git,zoom)
	$(call install_git,slack-desktop)

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

wmctrl:
	$(call install_aur,wmctrl)

mail: keyring
	$(call install_git,mailspring)
	ln -f ${HOME}/dotfiles/apps/mail/mailspring/* ~/.config/Mailspring
	# $(call install_git,ms-office-online)
	# sudo ln -f ${HOME}/dotfiles/apps/mail/ms-office /usr/bin/ms-office
	wget https://github.com/eNkru/freelook/releases/download/v1.0.1/electron-outlook-1.0.1-x86_64.AppImage
	mkdir -p ~/software
	mv electron-outlook-1.0.1-x86_64.AppImage ~/software/outlook.AppImage

screen:
	$(call install_aur,screen)
	ln -f ${HOME}/dotfiles/apps/screen/screenrc ~/.screenrc

visualizer:
	git clone https://aur.archlinux.org/cava.git cava_
	cd cava_; makepkg -is
	rm -rf cava_
	ln -f ${HOME}/dotfiles/apps/cava/config ~/.config/cava/config

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

qt:
	$(call install_aur,qt5-tools qt5-base)

all: webcam files monitor settings dropbox mail
	ln -sf ${HOME}/dotfiles/apps/applications ~/.local/share/
