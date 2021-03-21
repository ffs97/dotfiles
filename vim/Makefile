install:
	sudo pacman -S --noconfirm zsh vim python python-pip
	sudo pip install pynvim

config: vimrc shortcuts.vim lightline/* colors/* snippets/*
	rm -rf ~/.vimrc
	ln vimrc ~/.vimrc
	mkdir -p ~/.vim/bundle
	rm -rf ~/.vim/bundle/Vundle.vim
	git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
	vim +PluginInstall +qall
	mkdir -p ~/.vim/colors
	for f in ./colors/*.vim; do rm -f $(basename $f | sed 's/^/\/home\/fat-fighter\/.vim\/colors\//'); done
	ln ./colors/* ~/.vim/colors
	ln shortcuts.vim ~/.vim/
	ln -s snippets ~/.vim/
	ln lightline/* ~/.vim/bundle/lightline.vim/autoload/lightline/colorscheme/
