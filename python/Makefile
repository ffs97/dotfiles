install:
	sudo pacman -S --noconfirm python python-pip
	wget https://repo.continuum.io/miniconda/Miniconda3-latest-Linux-x86_64.sh
	mkdir -p ~/software
	sh Miniconda3-latest-Linux-x86_64.sh -p ~/software/conda 
	rm Miniconda3-latest-Linux-x86_64.sh
	sudo ln ~/software/conda/etc/profile.d/conda.sh /etc/profile.d/conda.sh
	conda deactivate
	pip install jupyter
	sh jupyter/install.sh

config:
	rm -f ~/.jupyter/nbconfig/*
	ln jupyter/nbconfig/* ~/.jupyter/nbconfig/
