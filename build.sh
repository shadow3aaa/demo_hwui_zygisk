CFLAGS="
-O3 -flto -fmerge-all-constants -fno-exceptions -fomit-frame-pointer -fshort-enums
-Wl,-O3,--lto-O3,--gc-sections,--as-needed,--icf=all,-z,norelro,--pack-dyn-relocs=android+relr
-std=c++2b -Wall -lc++"

clang++ --shared src/*.cpp \
	-fPIC -nostdlib++ -Wl,-llog, \
	$CFLAGS \
	-o arm64-v8a.so
strip arm64-v8a.so