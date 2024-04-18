get_property(dialect_libs GLOBAL PROPERTY MLIR_DIALECT_LIBS)
get_property(conversion_libs GLOBAL PROPERTY MLIR_CONVERSION_LIBS)
set(LIBS
        ${dialect_libs}
        ${conversion_libs}
        MLIRArithDialect
        MLIROptLib
        MLIRIgnota
        )
add_llvm_executable(ignota-opt ignota-opt.cpp)

llvm_update_compile_flags(ignota-opt)
target_link_libraries(ignota-opt PRIVATE ${LIBS})

mlir_check_all_link_libraries(ignota-opt)