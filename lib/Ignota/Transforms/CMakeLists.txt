set(CMAKE_EXPORT_COMPILE_COMMANDS ON)

add_mlir_dialect_library(MLIRIgnotaPasses
	PowfRootfOpt.cpp

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