add_mlir_dialect(IgnotaOps ignota)
add_mlir_doc(IgnotaDialect IgnotaDialect Ignota/ -gen-dialect-doc)
add_mlir_doc(IgnotaOps IgnotaOps Ignota/ -gen-op-doc)

set(LLVM_TARGET_DEFINITIONS IgnotaPasses.td)
mlir_tablegen(IgnotaPasses.h.inc --gen-pass-decls)
add_public_tablegen_target(MLIRIgnotaPassesIncGen)