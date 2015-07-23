#
# Author: Rolando Espinoza La fuente <darkrho (at) gmail.com>
#
SUBDIRS = requirements vim
DOTFILES = ctags curlrc gitconfig gitignore hgignore hgrc ipython_config.py latexmkrc pylintrc vimrc vim zshrc


all: subdirs links

links:
	for name in $(DOTFILES); do \
		./setup_link.sh $$name; \
	done

subdirs: $(SUBDIRS)

.PHONY: $(SUBDIRS)
$(SUBDIRS):
	$(MAKE) -C $@

