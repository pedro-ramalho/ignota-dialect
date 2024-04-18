#include "Ignota/IgnotaTypes.h"

#include "Ignota/IgnotaDialect.h"
#include "mlir/IR/Builders.h"
#include "mlir/IR/DialectImplementation.h"
#include "llvm/ADT/TypeSwitch.h"

using namespace mlir::ignota;

#define GET_TYPEDEF_CLASSES
#include "Ignota/IgnotaOpsTypes.cpp.inc"

void IgnotaDialect::registerTypes() {
  addTypes<
#define GET_TYPEDEF_LIST
#include "Ignota/IgnotaOpsTypes.cpp.inc"
      >();
}
