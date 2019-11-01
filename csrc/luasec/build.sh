[ "$P" ] || exit 1

../../luajit options.lua -g ../../csrc/openssl/src/include/openssl/ssl.h > options.h

mkdir -p "$(dirname ../../bin/$P/clib)"

mkdir -p luasocket
cp -f ../socket/src/*.{h,c} luasocket/
(cd luasocket && cat ../*.patch | patch -N -p1)

${X}gcc -c -O2 $C $files -I. -I../lua-headers -I../openssl/src/include
${X}gcc *.o -shared -o ../../bin/$P/clib/$D -L../../bin/$P -lssl -lcrypto $L
rm -f      ../../bin/$P/$A
${X}ar rcs ../../bin/$P/$A *.o
rm *.o

rm -rf luasocket
