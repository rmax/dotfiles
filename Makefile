#
# Author: Rolando Espinoza La fuente <darkrho (at) gmail.com>
#
SUBDIRS = vim requirements
DOTFILES = ctags curlrc gitconfig gitignore hgignore hgrc ipython_config.py pylintrc vimrc vim


all: subdirs links

links:
	for name in $(DOTFILES); do \
		./setup_link.sh $$name; \
	done

subdirs: $(SUBDIRS)

.PHONY: $(SUBDIRS)
$(SUBDIRS):
	$(MAKE) -C $@

