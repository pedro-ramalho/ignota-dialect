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


def Ignota_FooOp : Ignota_Op<"foo", [Pure,
                                             SameOperandsAndResultType]> {
    let summary = "Illustrates how to define an operation.";
    let description = [{
        The `ignota.foo` operation illustrates how to define a new
        operation in a dialect. It uses an operation trait to declare that it
        has no side effects.

        This operation takes an integer argument and returns an integer.

        Example:

        ```mlir
        %0 = arith.constant 2 : i32
        // Apply the foo operation to %0
        %1 = ignota.foo %0 : i32
        ```
    }];

    let arguments = (ins I32:$input);
    let results = (outs I32:$res);

    let assemblyFormat = [{
        $input attr-dict `:` type($input)
    }];
}

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

#endif // IGNOTA_DIALECT
