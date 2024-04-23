#ifndef IGNOTA_PASS
#define IGNOTA_PASS

include "mlir/Pass/PassBase.td"

def IgnotaPowerRootOpt : Pass<"ignota-powf-rootf-opt", "::mlir::ModuleOp"> {
	let summary = "Optimizes powf and rootf operations with the same exponent and degree.";
	let description = [{}];
}

#endif // IGNOTA_PASS