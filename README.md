# FaCT++ imported to [D Language](http://dlang.org)

[FaCT++](http://owl.man.ac.uk/factplusplus/)
> FaCT++
> FaCT++ is the new generation of the well-known FaCT OWL-DL reasoner. FaCT++ uses the established FaCT algorithms, but with a different internal architecture. Additionally, FaCT++ is implementated using > C++ in order to create a more efficient software tool, and to maximise portability. New optimisations have also been introduced, and some new features added.

[FaCT++ Page at Manchester University](http://owl.cs.manchester.ac.uk/tools/fact/)

#### Notes

The _OWL-API_ part is not done - only the standalone reasoner is included. (See the _FaCT++.C_ folder in the source tree).

We add a static lib because the variadics need _extern(D)_ wrapper  functions.  The wrappers are prefixed with an underscore.

Unittests are in _source/facttests.d_ and are based on the python examples.

#### To use in your _dub_ project

Add the dependency __factplusplus-d__, and put the libraries on your linker path.


#### To compile __fact_test.d__

On Posix:

    dmd -m64 fact_test.d source/fact.d posix/bin64-debug/libfact.so
    LD_LIBRARY_PATH=posix/bin64-debug:$LD_LIBRARY_PATH ./fact_test

On Posix 32:

    dmd -m32 fact_test.d source/fact.d posix/bin32-debug/libfact.so
    LD_LIBRARY_PATH=posix/bin32-debug:$LD_LIBRARY_PATH ./fact_test


On Windows 64:

    dmd -m64 fact_test.d source/fact.d windows/bin64-debug/fact.lib
    copy windows/bin64-debug/fact.dll .
    fact_test.exe

On Windows 32:

    dmd -m32mscoff fact_test.d source/fact.d windows/bin32-debug/fact.lib
    copy windows/bin32-debug/fact.dll .
    fact_test.exe


### To rebuild FaCT++ dynamic library

Download [FaCT++ sources](https://bitbucket.org/dtsarkov/factplusplus) from bitbucket.
Then build using cmake.  

The libraries are built in the _FaCT++.C_ folder.

## D Import
_htod_ is used to re-create the header.  The typedefs and variadics are manually edited to use _std.typecons_ and _core.stdc.stdarg_ respectively.
