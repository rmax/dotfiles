#
# Author: Rolando Espinoza La fuente <darkrho (at) gmail.com>
#
SUBDIRS = bundle

all: subdirs

.PHONY: $(SUBDIRS)
subdirs: $(SUBDIRS)

$(SUBDIRS):
	$(MAKE) -C $@
