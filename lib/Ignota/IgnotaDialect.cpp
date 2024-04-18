#include "Ignota/IgnotaDialect.h"
#include "Ignota/IgnotaOps.h"
#include "Ignota/IgnotaTypes.h"

using namespace mlir;
using namespace mlir::ignota;

#include "Ignota/IgnotaOpsDialect.cpp.inc"

void IgnotaDialect::initialize() {
  addOperations<
#define GET_OP_LIST
#include "Ignota/IgnotaOps.cpp.inc"
      >();
  registerTypes();
}