#ifndef IGNOTA_IGNOTAPASSES_H
#define IGNOTA_IGNOTAPASSES_H

#include "Ignota/IgnotaDialect.h"
#include "Ignota/IgnotaOps.h"
#include "mlir/Pass/Pass.h"
#include <memory>

namespace mlir {
namespace ignota {
#define GEN_PASS_DECL
#include "Ignota/IgnotaPasses.h.inc"

#define GEN_PASS_REGISTRATION
#include "Ignota/IgnotaPasses.h.inc"
} // namespace ignota
} // namespace mlir

#endif