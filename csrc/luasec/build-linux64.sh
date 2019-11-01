cp -f ../openssl/opensslconf.h.linux64 ../openssl/src/include/openssl/opensslconf.h
files="config.c context.c ec.c ssl.c x509.c
	luasocket/buffer.c luasocket/io.c luasocket/timeout.c luasocket/usocket.c" \
	P=linux64 C="-fPIC -DWITH_LUASOCKET" \
	L="-s -static-libgcc -lluajit" \
	D=ssl.so A=ssl.a ./build.sh
