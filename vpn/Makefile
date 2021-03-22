install:
	sudo pacman -S --noconfirm openconnect gnome-keyring oath-toolkit

config:
	secret-tool store --label="Nutanix OKTA" vpn password
	secret-tool store --label="Nutanix OKTA" vpn 2fa
	sudo install ${HOME}/dotfiles/vpn/vpn-connect /usr/bin
	sudo install ${HOME}/dotfiles/vpn/gauth /usr/bin
