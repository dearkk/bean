SUBDIRS := apple market
BEANPATH = $(shell pwd)/bin
export BEANPATH
all: $(SUBDIRS)

$(SUBDIRS):
	$(MAKE) -C $@

.PHONY: all $(SUBDIRS)