add_mlir_dialect_library(MLIRIgnota
        IgnotaTypes.cpp
        IgnotaDialect.cpp
        IgnotaOps.cpp
        IgnotaPasses.cpp

        ADDITIONAL_HEADER_DIRS
        ${PROJECT_SOURCE_DIR}/include/Ignota

        DEPENDS
        MLIRIgnotaOpsIncGen
        MLIRIgnotaPassesIncGen

        LINK_LIBS PUBLIC
        MLIRIR
        MLIRInferTypeOpInterface
        MLIRFuncDialect
        )