#ifndef IGNOTA_IGNOTAPASSES_H
#define IGNOTA_IGNOTAPASSES_H

#include "mlir/Pass/Pass.h"

#include "Ignota/IR/IgnotaOps.h"

namespace mlir {
namespace ignota {
#define GEN_PASS_DECL
#include "Ignota/Transforms/IgnotaPasses.h.inc"

#define GEN_PASS_REGISTRATION
#include "Ignota/Transforms/IgnotaPasses.h.inc"
} // namespace ignota
} // namespace mlir

#endif // IGNOTA_IGNOTAPASSES_H
