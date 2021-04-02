install:
	sudo pacman -S --noconfirm openconnect gnome-keyring oath-toolkit

config:
	secret-tool store --label="Nutanix OKTA" vpn password
	secret-tool store --label="Nutanix OKTA" vpn 2fa
	secret-tool store --label="Nutanix GitHub" 2fa secret
	sudo ln -f ${HOME}/dotfiles/vpn/vpn-connect /usr/bin
	sudo ln -f ${HOME}/dotfiles/vpn/gauth /usr/bin
