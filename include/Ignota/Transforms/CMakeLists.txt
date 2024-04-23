set(CMAKE_EXPORT_COMPILE_COMMANDS ON)

set(LLVM_TARGET_DEFINITIONS IgnotaPasses.td)
mlir_tablegen(IgnotaPasses.h.inc --gen-pass-decls)
add_public_tablegen_target(MLIRIgnotaPassesIncGen)