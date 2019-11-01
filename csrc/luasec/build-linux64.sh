LS=../socket/src
mkdir -p luasocket
cp -f $LS/*.h luasocket/
files="config.c context.c ec.c ssl.c x509.c
	$LS/buffer.c $LS/io.c $LS/timeout.c $LS/usocket.c" \
	P=linux64 C="-DWITH_LUASOCKET" \
	L="-s -static-libgcc -lluajit" \
	D=ssl.so A=ssl.a ./build.sh
rm -rf luasocket
