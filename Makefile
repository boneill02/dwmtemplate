.POSIX:

include config.mk

all: install

clean:
	rm -rf dwmtemplate-$(VERSION).tar.gz

dist:
	mkdir -p dwmtemplate-$(VERSION)
	cp -rf dwmtemplate README.md LICENSE config.mk Makefile dwmtemplate-$(VERSION)
	tar -cf dwmtemplate-$(VERSION).tar dwmtemplate-$(VERSION)
	gzip dwmtemplate-$(VERSION).tar
	rm -rf dwmtemplate-$(VERSION)

install:
	mkdir -p $(DESTDIR)/$(PREFIX)/bin
	cp -f dwmtemplate $(DESTDIR)$(PREFIX)/bin/dwmtemplate
	chmod 755 $(DESTDIR)$(PREFIX)/bin/dwmtemplate

uninstall:
	rm -f $(DESTDIR)/$(PREFIX)/bin/dwmtemplate

.PHONY: all clean dist install uninstall
