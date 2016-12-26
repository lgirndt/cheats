SRC_FILE=README.md
DEST_FILE=build/cheats.7
INSTALL_FILE=/usr/local/share/man/man7/cheats.7

.PHONY: build

build: $(DEST_FILE)
clean:
	rm -r build
setup:
	mkdir -p build
$(DEST_FILE): $(SRC_FILE) setup
	ronn <$(SRC_FILE) >$(DEST_FILE)
install: build
	ln -s  $(realpath $(DEST_FILE)) $(INSTALL_FILE)
uninstall:
	rm $(INSTALL_FILE)
preview:
	ronn --man $(SRC_FILE)
