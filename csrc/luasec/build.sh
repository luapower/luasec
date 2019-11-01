../../luajit options.lua -g ../../csrc/openssl/src/include/openssl/ssl.h > options.h
mkdir -p "$(dirname ../../bin/$P/clib)"
${X}gcc -c -O2 $C $files -I. -I../lua-headers -I../openssl/src/include
${X}gcc *.o -shared -o ../../bin/$P/clib/$D -L../../bin/$P -lssl -lcrypto $L
rm -f      ../../bin/$P/$A
${X}ar rcs ../../bin/$P/$A *.o
rm *.o
