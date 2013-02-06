#
# Author: Rolando Espinoza La fuente <darkrho (at) gmail.com>
#
SHELL := /bin/bash --init-file functions.sh -i

PLUGINS = command-t jedi-vim lusty python-mode sparkup syntastic \
	ultisnips vim-flake8 vim-fugitive vim-ipython vim-latex-suite \
	vim-powerline vim-sensible vim-surround vim-virtualenv

.PHONY: $(PLUGINS)

all: $(PLUGINS)

command-t:
	git_bundle git://git.wincent.com/command-t.git
	cd command-t/ruby/command-t; ruby extconf.rb
	$(MAKE) -C command-t/ruby/command-t/

jedi-vim:
	git_bundle git://github.com/davidhalter/jedi-vim.git
	cd jedi-vim; git submodule update --init; git submodule update
	cd jedi-vim/jedi; python setup.py develop --user

lusty:
	git_bundle git://github.com/sjbach/lusty.git

python-mode:
	git_bundle git://github.com/klen/python-mode.git

sparkup:
	git_bundle git://github.com/rstacruz/sparkup.git
	cd sparkup; ln -s `pwd`/vim/ftplugin . 2>/dev/null || true

syntastic:
	git_bundle git://github.com/scrooloose/syntastic.git

ultisnips:
	git_bundle git://github.com/SirVer/ultisnips.git

vim-flake8:
	git_bundle git://github.com/nvie/vim-flake8.git

vim-fugitive:
	git_bundle git://github.com/tpope/vim-fugitive.git

vim-ipython:
	git_bundle git://github.com/ivanov/vim-ipython.git

vim-latex-suite:
	git_bundle git://github.com/gerw/vim-latex-suite.git

vim-powerline:
	git_bundle git://github.com/Lokaltog/vim-powerline.git	

vim-sensible:
	git_bundle git://github.com/tpope/vim-sensible.git
	mkdir ~/.local/share/vim/{swap,backup,undo} 2>/dev/null || true

vim-surround:
	git_bundle git://github.com/tpope/vim-surround.git

vim-virtualenv:
	git_bundle git://github.com/jmcantrell/vim-virtualenv.git


