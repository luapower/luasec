LS=../socket/src
ln -sfT ../socket/src luasocket
files="config.c context.c ec.c ssl.c x509.c
	$LS/buffer.c $LS/io.c $LS/timeout.c $LS/usocket.c" \
	P=linux64 C="-DWITH_LUASOCKET" \
	L="-s -static-libgcc -lluajit -lssl -lcrypto" \
	D=ssl.so A=ssl.a ./build.sh
rm luasocket
