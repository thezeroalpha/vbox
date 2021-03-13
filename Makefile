prefix=/usr/local
datarootdir=$(prefix)/share
datadir=$(datarootdir)
exec_prefix=$(prefix)
bindir=$(exec_prefix)/bin
mandir=$(datarootdir)/man
man1dir=$(mandir)/man1

all:
	@echo  "Targets: install, uninstall, man"

install: vbox vbox.1.man
	cp vbox $(bindir)/
	cp vbox.1.man $(man1dir)/vbox.1
	@echo "If you want Zsh completion, copy the _vbox file to your Zsh completions directory."

uninstall:
	rm $(bindir)/vbox
	rm $(man1dir)/vbox.1
