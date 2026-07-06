#
# Global Settings
#

INSTALL = install
PREFIX  ?= /usr

PATH_BSPWM_GNOME_DESKTOP  = $(PREFIX)/share/xsessions/bspwm-gnome.desktop
PATH_BSPWM_GNOME_SESSION  = $(PREFIX)/local/bin/bspwm-gnome-session
PATH_BSPWM_SESSION_TARGET = $(PREFIX)/lib/systemd/user/bspwm-session.target

#
# Targets
#

all:
	@echo "Nothing to do"


install:
	$(INSTALL) -m0644 -D session/bspwm-gnome.desktop $(PATH_BSPWM_GNOME_DESKTOP)
	$(INSTALL) -m0755 -D session/bspwm-gnome-session $(PATH_BSPWM_GNOME_SESSION)
	$(INSTALL) -m0644 -D session/bspwm-session.target $(PATH_BSPWM_SESSION_TARGET)



uninstall:
	rm -f $(PATH_BSPWM_GNOME_DESKTOP)
	rm -f $(PATH_BSPWM_GNOME_SESSION)
	rm -f $(PATH_BSPWM_SESSION_TARGET)



.PHONY: all install uninstall
