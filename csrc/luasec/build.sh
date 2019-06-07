${X}gcc -c -O2 $C $files -Isrc -I../lua-headers -I../openssl/include
${X}gcc *.o -shared -o ../../bin/$P/clib/$D $L
rm -f      ../../bin/$P/$A
${X}ar rcs ../../bin/$P/$A *.o
rm *.o
