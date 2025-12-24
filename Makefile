#
# Global Settings
#

INSTALL = install
DESTDIR ?= /
PREFIX  ?= $(DESTDIR)/usr

PATH_BSPWM_GNOME_DESKTOP = $(PREFIX)/share/applications/bspwm-gnome.desktop
PATH_BSPWM_GNOME_SESSION = $(PREFIX)/local/bin/bspwm-gnome-session

#
# Targets
#

all:
	@echo "Nothing to do"


install:
	$(INSTALL) -m0644 -D session/bspwm-gnome.desktop $(PATH_BSPWM_GNOME_DESKTOP)
	$(INSTALL) -m0755 -D session/bspwm-gnome-session $(PATH_BSPWM_GNOME_SESSION)



uninstall:
	rm -f $(PATH_BSPWM_GNOME_DESKTOP)
	rm -f $(PATH_BSPWM_GNOME_SESSION)



.PHONY: all install uninstall
