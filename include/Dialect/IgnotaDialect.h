#ifndef IGNOTA_DIALECT_H
#define IGNOTA_DIALECT_H

#include <llvm/ADT/StringRef.h>
#include <mlir/IR/Dialect.h>
#include <mlir/IR/MLIRContext.h>

namespace mlir {
namespace ignota {

class IgnotaDialect : public mlir::Dialect {
public:
  explicit IgnotaDialect(mlir::MLIRContext *ctx);

  static llvm::StringRef getDialectNamespace() { return "ignota"; }

  void initialize();
};
} // namespace ignota
} // namespace mlir

#endif // IGNOTA_DIALECT_H