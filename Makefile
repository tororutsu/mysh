PREFIX ?= ~/.local
DOCDIR ?= $(PREFIX)/share/doc/mysh

all:
	@echo Run \'make install\' to install mysh.

install:
	@mkdir -p $(DESTDIR)$(PREFIX)/bin
	@mkdir -p $(DESTDIR)$(DOCDIR)
	@cp -p mysh $(DESTDIR)$(PREFIX)/bin/mysh
	@cp -p README.md $(DESTDIR)$(DOCDIR)
	@chmod 755 $(DESTDIR)$(PREFIX)/bin/mysh

uninstall:
	@rm -rf $(DESTDIR)$(PREFIX)/bin/mysh
	@rm -rf $(DESTDIR)$(DOCDIR)
