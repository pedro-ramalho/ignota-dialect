# MLIR Ignota Dialect

The Ignota dialect is being developed in collaboration with SPeCS as part of a scholarship initiative. The goal of this project is to provide comprehensive guidance on building a custom MLIR dialect from scratch.

## Getting Started

### Dependencies

Dependencies include a proper installation of LLVM and MLIR. Find more information about building LLVM and MLIR [here](https://mlir.llvm.org/getting_started/).

If you didn't explicitly specify an installation directory, LLVM and MLIR's libraries will be placed in the `/usr/local` directory.

It is advisable to ensure that the generated binaries (such as `mlir-opt`) are accessible system-wide.

### Building

In order to build this project, CMake and Ninja must be installed.

When all pre-requisites are met, simply run:

```bash
mkdir build && cd build
cmake -G Ninja ..
cmake --build .
```

If the building process is successful there should be a binary called `ignota-opt` located in `/build/bin/ignota-opt`, which is the entry point of the dialect.