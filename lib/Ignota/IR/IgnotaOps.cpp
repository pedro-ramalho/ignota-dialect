#include "Ignota/IR/IgnotaOps.h"

#include "mlir/IR/Builders.h"
#include "mlir/IR/DialectImplementation.h"
#include "llvm/ADT/TypeSwitch.h"
#include "mlir/Dialect/Func/IR/FuncOps.h"
#include "mlir/IR/PatternMatch.h"
#include "mlir/Rewrite/FrozenRewritePatternSet.h"
#include "mlir/Support/LogicalResult.h"
#include "mlir/Transforms/GreedyPatternRewriteDriver.h"

#define GET_OP_CLASSES
#include "Ignota/IR/IgnotaOps.cpp.inc"

using namespace mlir;
using namespace mlir::ignota;

#include "Ignota/IR/IgnotaOpsDialect.cpp.inc"

void IgnotaDialect::initialize() {
  addOperations<
#define GET_OP_LIST
#include "Ignota/IR/IgnotaOps.cpp.inc"
      >();
}
