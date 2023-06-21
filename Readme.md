To fix the <code>Prefix.pch</code> problem you must fixup your xcode project:

1. delete the file entries in the project referencing Prefix.pch
2. change GCC_PRECOMPILE_PREFIX_HEADER from YES to NO in build settings
3. delete GCC_PREFIX_HEADER = "$(SRCROOT)/macOS/Prefix.pch"in build settings