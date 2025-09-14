HOME=/home/sergey

install:
	# TODO TEST + FINAL path
	install -vm 755 pakt $(HOME)/stuff/bin/pakt
	install -vm 644 pakt.conf.default /etc/pakt.conf.default
	install -vm 755 pakt.conf.default $(HOME)/.config/pakt.conf

uninstall:
	# TODO TEST + FINAL path
	sudo rm -v /etc/pakt.conf.default $(HOME)/stuff/bin/pakt $(HOME)/.config/pakt.conf
