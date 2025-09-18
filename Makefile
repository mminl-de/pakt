OUT_PATH ?= /usr/bin

install:
	sudo install -vm 755 pakt $(OUT_PATH)/pakt
	sudo install -vm 444 pakt.conf.default /etc/pakt.conf.default
	install -vm 644 pakt.conf.default ${HOME}/.config/pakt.conf
	sudo ln -sf $(OUT_PATH)/pakt $(OUT_PATH)/pakt-dry
	sudo ln -sf $(OUT_PATH)/pakt $(OUT_PATH)/pakt-sync
	sudo ln -sf $(OUT_PATH)/pakt $(OUT_PATH)/pakt-cat
	sudo ln -sf $(OUT_PATH)/pakt $(OUT_PATH)/pakt-find
	sudo ln -sf $(OUT_PATH)/pakt $(OUT_PATH)/pakt-edit

uninstall:
	sudo rm -v /etc/pakt.conf.default $(OUT_PATH)/pakt* ${HOME}/.config/pakt.conf
