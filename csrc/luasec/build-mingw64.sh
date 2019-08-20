../../luajit src/options.lua -g ../../csrc/openssl/include/openssl/ssl.h > src/options.h
LS=../socket/src
files="src/config.c src/context.c src/ec.c src/ssl.c src/x509.c
	$LS/buffer.c $LS/io.c $LS/timeout.c $LS/wsocket.c" \
	P=mingw64 C="-DWINVER=0x0501 -DLUASOCKET_INET_PTON
		-DWITH_LUASOCKET -DLUASEC_INET_NTOP -D_WIN32_WINNT=0x0501 -DNTDDI_VERSION=0x05010300" \
	L="-s -static-libgcc -L../../bin/mingw64 -llua51 -lws2_32 -llibssl-1_1-x64 -llibcrypto-1_1-x64" \
	D=ssl.dll A=ssl.a ./build.sh
