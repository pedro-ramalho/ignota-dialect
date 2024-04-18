#ifndef IGNOTA_DIALECT
#define IGNOTA_DIALECT

include "mlir/IR/OpBase.td"

def Ignota_Dialect : Dialect {
    let name = "ignota";
    let summary = "A ignota out-of-tree MLIR dialect.";
    let description = [{
        This dialect is an example of an out-of-tree MLIR dialect designed to
        illustrate the basic setup required to develop MLIR-based tools without
        working inside of the LLVM source tree.
    }];
    let cppNamespace = "::mlir::ignota";

    let useDefaultTypePrinterParser = 1;
    let extraClassDeclaration = [{
        void registerTypes();
    }];
}

class Ignota_Op<string mnemonic, list<Trait> traits = []> :
        Op<Ignota_Dialect, mnemonic, traits>;

#endif // IGNOTA_DIALECT
