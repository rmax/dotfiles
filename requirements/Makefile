#
# Author: Rolando Espinoza La fuente <darkrho (at) gmail.com>
#
PIP_FILES := $(wildcard *.pip)
APT_FILES := $(wildcard *.apt)


all: apt_install pip_install

apt_install: $(APT_FILES)

pip_install: $(PIP_FILES)

.PHONY : $(APT_FILES)
$(APT_FILES):
	sudo apt-get install -qq -y `cat $@`

.PHONY : $(PIP_FILES)
$(PIP_FILES):
	pip install --user -q -r $@

