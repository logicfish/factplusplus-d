# factplusplus-d
FaCT++ import to dlang

### To rebuild FaCT++ library
Download FaCT++ sources https://bitbucket.org/dtsarkov/factplusplus
Build using cmake

htod is used to re-create the header.  The typedefs and variadics are manually edited to use std.typecons and core.stdc.stdarg respectively.

### To compile fact_test.d:

On Posix:

dmd -Isource fact_test.d posix/bin64-debug/libfact.so
LD_LIBRARY_PATH=posix/bin64-debug/ ./fact_test
