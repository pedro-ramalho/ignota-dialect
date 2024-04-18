#include "Dialect/IgnotaDialect.h"

using namespace mlir;
using namespace mlir::ignota;

IgnotaDialect::IgnotaDialect(mlir::MLIRContext *ctx) : mlir::Dialect("ignota", ctx, mlir::TypeID::get<IgnotaDialect>()) {}