cp -f ../openssl/opensslconf.h.mingw64 ../openssl/src/include/openssl/opensslconf.h
files="config.c context.c ec.c ssl.c x509.c
	luasocket/buffer.c luasocket/io.c luasocket/timeout.c luasocket/wsocket.c" \
	P=mingw64 C="-DWINVER=0x0501 -DLUASOCKET_INET_PTON
		-DWITH_LUASOCKET -DLUASEC_INET_NTOP -D_WIN32_WINNT=0x0501 -DNTDDI_VERSION=0x05010300" \
	L="-s -static-libgcc -lws2_32 -llua51" \
	D=ssl.dll A=ssl.a ./build.sh
