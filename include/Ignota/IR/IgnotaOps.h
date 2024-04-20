#ifndef IGNOTA_IGNOTADIALECT_H
#define IGNOTA_IGNOTADIALECT_H

#include "mlir/Bytecode/BytecodeOpInterface.h"
#include "mlir/IR/Dialect.h"
#include "mlir/IR/BuiltinTypes.h"
#include "mlir/IR/OpDefinition.h"
#include "mlir/Interfaces/InferTypeOpInterface.h"
#include "mlir/Interfaces/SideEffectInterfaces.h"
#include "mlir/Pass/Pass.h"

#include <memory>

#include "Ignota/IR/IgnotaOpsDialect.h.inc"

#define GET_OP_CLASSES
#include "Ignota/IR/IgnotaOps.h.inc"

#endif // IGNOTA_IGNOTADIALECT_H
