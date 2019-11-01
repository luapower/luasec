LS=../socket/src
files="config.c context.c ec.c ssl.c x509.c
	$LS/buffer.c $LS/io.c $LS/timeout.c $LS/wsocket.c" \
	P=mingw64 C="-DWINVER=0x0501 -DLUASOCKET_INET_PTON
		-DWITH_LUASOCKET -DLUASEC_INET_NTOP -D_WIN32_WINNT=0x0501 -DNTDDI_VERSION=0x05010300" \
	L="-s -static-libgcc -lws2_32 -llua51 -llibssl-1_1-x64 -llibcrypto-1_1-x64" \
	D=ssl.dll A=ssl.a ./build.sh
