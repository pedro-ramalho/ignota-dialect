set(CMAKE_EXPORT_COMPILE_COMMANDS ON)

add_mlir_dialect_library(MLIRIgnota
        IgnotaOps.cpp

        ADDITIONAL_HEADER_DIRS
        ${PROJECT_SOURCE_DIR}/include/Ignota

        DEPENDS
        MLIRIgnotaOpsIncGen

        LINK_LIBS PUBLIC
        MLIRIR
        MLIRInferTypeOpInterface
        MLIRFuncDialect
        )