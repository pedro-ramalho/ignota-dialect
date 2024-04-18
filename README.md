# MLIR Ignota Dialect

The Ignota dialect is being developed in collaboration with SPeCS as part of a scholarship initiative. The goal of this project is to provide comprehensive guidance on building a custom MLIR dialect from scratch.

## Getting Started

### Prerequisites

In order to run the project you must have a proper installation of LLVM and MLIR in your system. For a comprehensive list of the required packages necessary to build LLVM, please click [here](https://llvm.org/docs/GettingStarted.html#requirements).

### Dependencies

Dependencies include:
- CMake, version >= 3.20.0
- Ninja, version >= 1.10.0
- Clang, version >= 14.0.0

### Utilities

For code editing features, navigation, analysis, suggestions and assistants, you may use LLVM's official LSP, Clangd. The file `.clangd` placed in the root of this repository provides a very simple configuration of this LSP.

### Building

When all pre-requisites are met, simply run:

```bash
mkdir build && cd build
cmake -G Ninja ..
cmake --build .
```

If the building process is successful there should be a binary called `ignota-opt` located in `/build/bin/ignota-opt`, which is the entry point of the dialect.
