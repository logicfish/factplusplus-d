# factplusplus-d
FaCT++ import to dlang

### To rebuild FaCT++ library
Download FaCT++ sources https://bitbucket.org/dtsarkov/factplusplus


Build using cmake


htod is used to re-create the header.  The typedefs and variadics are manually edited to use std.typecons and core.stdc.stdarg respectively.

### To compile fact_test.d:

On Posix:

    dmd -m64 fact_test.d source/fact.d posix/bin64-debug/libfact.so
    LD_LIBRARY_PATH=posix/bin64-debug/ ./fact_test

On Windows 64:

    dmd -m64 -Isource fact_test.d windows/bin64-debug/fact.lib
    copy windows/bin64-debug/fact.dll .
    fact_test.exe

On Windows 32:

    dmd -m32mscoff -Isource fact_test.d windows/bin32-debug/fact.lib
    copy windows/bin32-debug/fact.dll .
    fact_test.exe
