#include "mlir/Dialect/Arith/IR/Arith.h"
#include "mlir/Dialect/Func/IR/FuncOps.h"
#include "mlir/Dialect/Math/IR/Math.h"
#include "mlir/IR/Attributes.h"
#include "mlir/IR/PatternMatch.h"
#include "mlir/IR/Value.h"
#include "mlir/Rewrite/FrozenRewritePatternSet.h"
#include "mlir/Support/LogicalResult.h"
#include "mlir/Transforms/DialectConversion.h"
#include "mlir/Transforms/GreedyPatternRewriteDriver.h"

#include "Ignota/Transforms/IgnotaPasses.h"

namespace mlir::ignota {
#define GEN_PASS_DEF_IGNOTAPOWFROOTFOPT
#include "Ignota/Transforms/IgnotaPasses.h.inc"

struct IgnotaPowfRootOpt : impl::IgnotaPowfRootfOptBase<IgnotaPowfRootOpt> {
  using impl::IgnotaPowfRootfOptBase<IgnotaPowfRootOpt>::IgnotaPowfRootfOptBase;

  void runOnOperation() override {

  }
};
} // namespace mlir::ignota
