# (c) Kied Llaentenn
# knaur: a simple AUR helper that stays out of your way.
#

all: options

options:
	@echo "==> OPTIONS:"
	@echo "\tmake tests\trun tests via shellcheck"
	@echo "\tmake install\tinstall knaur into /usr/bin/"
	@echo "\tmake uninstall\tuninstall knaur from /usr/bin/"
	@echo "please modify the makefile manually if you want to"
	@echo "change the install location."

tests:
	@echo "running tests via shellcheck"
	shellcheck ./*

install:
	@echo "installing to /usr/bin/knaur"
	install -m 755 ./knaur /usr/bin/knaur
	install -m 755 ./knaur-out-of-date /usr/bin/knaur-out-of-date
	install -m 755 ./knaur-search-aurpkgs /usr/bin/knaur-search-aurpkgs

uninstall:
	@echo "uninstalling knaur :-("
	rm -f /usr/bin/knaur
	rm -f /usr/bin/knaur-out-of-date
	rm -f /usr/bin/knaur-search-aurpkgs

.PHONY: all options tests install uninstall
