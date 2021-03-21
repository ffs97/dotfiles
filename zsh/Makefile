install:
	sudo pacman -S --noconfirm zsh wget exa
	rm -rf ~/.oh-my-zsh
	wget https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh
	sh install.sh
	rm -rf ~/.zsh/zsh-autosuggestions
	git clone git://github.com/zsh-users/zsh-autosuggestions ~/.zsh/zsh-autosuggestions
	rm -rf ~/.zsh/zsh-syntax-highlighting
	git clone git://github.com/zsh-users/zsh-syntax-highlighting ~/.zsh/zsh-syntax-highlighting
	sudo usermod -s `which zsh` `whoami`

config: zshrc bashrc themes/glass.zsh-theme
	rm ~/.zshrc ~/.bashrc
	ln zshrc ~/.zshrc
	ln bashrc ~/.bashrc
	rm -rf ~/.oh-my-zsh/themes/glass.zsh-theme
	ln themes/glass.zsh-theme ~/.oh-my-zsh/themes/

clean:
	rm -rf install.sh
