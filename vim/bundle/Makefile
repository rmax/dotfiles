#
# Author: Rolando Espinoza La fuente <darkrho (at) gmail.com>
#
SHELL := /bin/bash --init-file functions.sh -i

all: download setup

download:
	git_bundle git://github.com/tpope/vim-sensible.git
	git_bundle git://github.com/nvie/vim-flake8.git
	git_bundle git://github.com/jmcantrell/vim-virtualenv.git
	git_bundle git://git.wincent.com/command-t.git
	git_bundle git://github.com/SirVer/ultisnips.git
	git_bundle git://github.com/klen/python-mode.git
	git_bundle git://github.com/Lokaltog/powerline.git

NEED_SETUP= vim-sensible command-t

.PHONY: setup $(NEED_SETUP)
setup: $(NEED_SETUP)

vim-sensible:
	mkdir ~/.local/share/vim/{swap,backup,undo} 2>/dev/null || true

command-t:
	(cd command-t/ruby/command-t && ruby extconf.rb)
	$(MAKE) -C command-t/ruby/command-t/

