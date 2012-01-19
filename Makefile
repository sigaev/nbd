install:
	mkdir build
	cd build && ../configure
	$(MAKE) -C build CFLAGS='-s -O2 -pipe'
	install -m755 -t/usr/local/sbin build/nbd-client
	install -m755 -t/usr/local/bin build/nbd-server
