install:
	pacman -S --noconfirm grub efibootmgr

config:
	mkdir /boot/efi
	mount /dev/nvme0n1p1 /boot/efi
	grub-install --target=x86_64-efi --efi-directory=/boot/efi --bootloader-id=GRUB
	grub-mkconfig -o /boot/grub/grub.cfg
	ln -f ${HOME}/dotfiles/grub/grub /etc/default/grub
