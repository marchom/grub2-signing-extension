# Makefile for grub2-sign-extension
# Author: Bandie Kojote (MeikoDis)
# Licence: GNU-GPLv3

all: 
	@printf "Nothing to make. Run make install.\n"

install:
	cp ./sbin/grub-verify /usr/sbin/
	cp ./sbin/grub-sign /usr/sbin/
	cp ./sbin/grub-unsign /usr/sbin/
	chown root:root /usr/sbin/grub-{verify,sign,unsign}
	chmod 700 /usr/sbin/grub-{verify,sign,unsign}
	@printf "Done.\n"

uninstall:
	rm /usr/sbin/grub-{verify,sign,unsign}
	@printf "Done.\n"
