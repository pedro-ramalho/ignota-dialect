#ifndef IGNOTA_IGNOTAOPS_H
#define IGNOTA_IGNOTAOPS_H

#include "mlir/IR/BuiltinTypes.h"
#include "mlir/IR/Dialect.h"
#include "mlir/IR/OpDefinition.h"
#include "mlir/Interfaces/InferTypeOpInterface.h"
#include "mlir/Interfaces/SideEffectInterfaces.h"

#define GET_OP_CLASSES
#include "Ignota/IgnotaOps.h.inc"

#endif // IGNOTA_IGNOTAOPS_H
