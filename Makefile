#
# Author: Rolando Espinoza La fuente <darkrho (at) gmail.com>
#
SUBDIRS = requirements vim
DOTFILES = curlrc latexmkrc pylintrc vimrc vim


all: subdirs links

links:
	for name in $(DOTFILES); do \
		./setup_link.sh $$name; \
	done

subdirs: $(SUBDIRS)

.PHONY: $(SUBDIRS)
$(SUBDIRS):
	$(MAKE) -C $@

