BIN_DIR=/usr/local/bin
BIN_FILE=git-recap

all:
	@echo "usage: make install"
	@echo "       make uninstall"

install:
	install -m 0755 $(BIN_FILE) $(BIN_DIR)

uninstall:
	test -d $(BIN_DIR) && \
	cd $(BIN_DIR) && \
	rm -f $(BIN_FILE)
