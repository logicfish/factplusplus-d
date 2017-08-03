# factplusplus-d - FaCT++ imported to [D Language](http://dlang.org)

[FaCT++](http://owl.man.ac.uk/factplusplus/)
> FaCT++
> FaCT++ is the new generation of the well-known FaCT OWL-DL reasoner. FaCT++ uses the established FaCT algorithms, but with a different internal architecture. Additionally, FaCT++ is implementated using > C++ in order to create a more efficient software tool, and to maximise portability. New optimisations have also been introduced, and some new features added.

[FaCT++ Page at Manchester University](http://owl.cs.manchester.ac.uk/tools/fact/)

#### Notes

The OWL-API part is not done - only the standalone reasoner is included. (See the "FaCT++.C" folder in the source tree).

#### To use in your dub project

Add the dependency "factplusplus-d", and put the dynamic library on your executable path.


#### To compile fact_test.d:

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


### To rebuild FaCT++ dynamic library

Download [FaCT++ sources](https://bitbucket.org/dtsarkov/factplusplus) from bitbucket.
Then build using cmake.  

## D Import
htod is used to re-create the header.  The typedefs and variadics are manually edited to use std.typecons and core.stdc.stdarg respectively.
The libraries are built in the FaCT++.C folder.
