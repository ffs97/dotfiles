THEME := $(shell cat ~/.theme)

install:
	sudo pacman -S --noconfirm python python-pip npm
	wget https://repo.continuum.io/miniconda/Miniconda3-latest-Linux-x86_64.sh
	mkdir -p ~/software
	sh Miniconda3-latest-Linux-x86_64.sh -p ~/software/conda 
	rm Miniconda3-latest-Linux-x86_64.sh
	sudo ln -f ${HOME}/software/conda/etc/profile.d/conda.sh /etc/profile.d/conda.sh
	conda deactivate
	sh jupyter/install.sh
	sudo npm install -g sass

config:
	sass jupyter/themes/${THEME}.scss jupyter/custom.css
	rm -rf ~/.jupyter/nbconfig
	ln -sf ${HOME}/dotfiles/python/jupyter/nbconfig ${HOME}/.jupyter/nbconfig
	mkdir -p ${HOME}/.jupyter/custom
	ln -f ${HOME}/dotfiles/python/jupyter/custom.{css,js} ${HOME}/.jupyter/custom/
