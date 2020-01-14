prefix=/usr/local
INSTALL_MIME_PATH=$(DESTDIR)$(prefix)/share/mime
INSTALL_MIME_PACKAGES_PATH=$(INSTALL_MIME_PATH)/packages

all:
	$(info nothing to do, call install target)

install:
	install -d $(INSTALL_MIME_PACKAGES_PATH)
	install -m644 mime/packages/quake-hl.xml $(INSTALL_MIME_PACKAGES_PATH)
	install -m644 mime/packages/jack-mapeditor.xml $(INSTALL_MIME_PACKAGES_PATH)
ifndef DESTDIR
	update-mime-database $(INSTALL_MIME_PATH)
endif

uninstall:
	rm -f $(INSTALL_MIME_PACKAGES_PATH)/quake-hl.xml
	rm -f $(INSTALL_MIME_PACKAGES_PATH)/jack-mapeditor.xml
	-rmdir $(INSTALL_MIME_PACKAGES_PATH)
ifndef DESTDIR
	-update-mime-database $(INSTALL_MIME_PATH)
endif
