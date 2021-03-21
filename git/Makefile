install:
	sudo pacman -S --noconfirm git openssh

config: gitconfig gitignore
	rm -f ~/.gitignore ~/.gitconfig ~/.ssh/github*
	ln gitignore ~/.gitignore
	ln gitconfig ~/.gitconfig
	ssh-keygen -t rsa -b 4096 -C "g.singh6343@gmail.com" -f ~/.ssh/github
