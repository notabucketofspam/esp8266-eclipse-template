Quick reference for the Espressif instructions, in case something goes wrong.

C/C++ Build

- Top level
  - \[Builder Settings\] Uncheck "Use default build command"
  - \[Builder Settings\] Build command: `python eclipse_make.py`
  - \[Behavior\] Check "Enable parallel build"
- Environment
  - `BATCH_BUILD` : `1`
  - `IDF_PATH` : same as $IDF_PATH but with back slashes converted to forward slashes
  - `PATH` : `C:\msys64\usr\bin;C:\msys64\mingw64\bin;C:\msys64\opt\xtensa-lx106-elf\bin`

C/C++ General

- Indexer
  - Check "Enable project specific settings"
  - Verify that "Allow heuristic resolution of includes" is unchecked
- Preprocessor Include Paths, Macros etc.
  - \[Providers\] CDT Cross GCC Built-in Compiler Settings Cygwin: `xtensa-lx106-elf-gcc ${FLAGS} -E -P -v -dD "${INPUTS}"`
  - \[Providers\] CDT GCC Build Output Parser: `xtensa-lx106-elf-(gcc|g\+\+|c\+\+|cc|cpp|clang)`
