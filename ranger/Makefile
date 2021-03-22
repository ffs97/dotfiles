install:
	sudo pacman -S --noconfirm ranger python python-pip
	pip install pillow

config: rc.conf rifle.conf plugins/*
	mkdir -p ~/.config/ranger
	rm -rf ~/.config/ranger/*
	ln rc.conf ~/.config/ranger/rc.conf
	ln rifle.conf ~/.config/ranger/rifle.conf
	ln -s plugins ~/.config/ranger/
