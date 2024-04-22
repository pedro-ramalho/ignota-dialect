#ifndef IGNOTA_DIALECT
#define IGNOTA_DIALECT

include "mlir/IR/OpBase.td"
include "mlir/IR/AttrTypeBase.td"
include "mlir/Pass/PassBase.td"
include "mlir/Interfaces/InferTypeOpInterface.td"
include "mlir/Interfaces/SideEffectInterfaces.td"

def Ignota_Dialect : Dialect {
    let name = "ignota";
    let summary = "An ignota out-of-tree MLIR dialect.";
    let description = [{
        This dialect is an example of an out-of-tree MLIR dialect designed to
        illustrate the basic setup required to develop MLIR-based tools without
        working inside of the LLVM source tree.
    }];
    let cppNamespace = "::mlir::ignota";
}


class Ignota_Op<string mnemonic, list<Trait> traits = []> :
        Op<Ignota_Dialect, mnemonic, traits>;


def Ignota_PowfOp : Ignota_Op<"powf", [Pure, SameOperandsAndResultType]> {
    let summary = "Raises a floating-point number to the power of another.";

    let description = [{
        The `ignota.powf` operation raises a floating-point number to the power
        of another.

        Example:

        ```mlir
        %0 = arith.constant 2.0 : f32
        %1 = arith.constant 3.0 : f32

        // Compute 2.0 ^ 3.0
        %2 = ignota.powf %0, %1 : f32
    }];

    let arguments = (ins
        F32:$base,
        F32:$exponent
    );

    let results = (outs 
        F32:$result
    );

    let assemblyFormat = [{
        $base `,` $exponent attr-dict `:` type($result)
    }];
}

def Ignota_RootfOp : Ignota_Op<"rootf", [Pure, SameOperandsAndResultType]> {
    let summary = "Computes the n'th root of a number.";

    let description = [{
        The `ignota.rootf` operation computes the n'th root of a number.
        It takes two arguments: n (the root's degree) and m (the root's radicand),
        and returns the n'th root of m.

        Example:

        ```mlir
        %0 = arith.constant 2.0 : f32
        %1 = arith.constant 16.0 : f32

        // Compute the square root of 16.0
        %2 = ignota.rootf %0, %1 : f32
        ```
    }];

    let arguments = (ins 
        F32:$degree,
        F32:$radicand
    );

    let results = (outs 
        F32:$result
    );

    let assemblyFormat = [{
        $degree `,` $radicand attr-dict `:` type($result)
    }];
}

#endif // IGNOTA_DIALECT
