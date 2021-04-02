install:
	sudo pacman -S --noconfirm git openssh

config: gitconfig gitignore
	rm -f ~/.ssh/github*
	ln -f gitignore ~/.gitignore
	ln -f gitconfig ~/.gitconfig
	ssh-keygen -t rsa -b 4096 -C "g.singh6343@gmail.com" -f ~/.ssh/github
	secret-tool store --label="Nutanix GitHub" 2fa secret
