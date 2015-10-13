PREFIX=/usr/local

ifeq "$(realpath $(PREFIX))" "/usr"
$(error Installing into /usr may clobber the real pbcopy/pbpaste)
endif

all:
	@echo "Run 'make install' to install ssh-pbagent into '$(PREFIX)'."

install:
	install ssh-pbagent $(PREFIX)/bin/
	install pbcopy $(PREFIX)/bin/
	install pbpaste $(PREFIX)/bin/

uninstall:
	-rm $(PREFIX)/bin/ssh-pbagent
	-rm $(PREFIX)/bin/pbcopy
	-rm $(PREFIX)/bin/pbpaste
