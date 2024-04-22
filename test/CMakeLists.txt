llvm_canonicalize_cmake_booleans(
	MLIR_ENABLE_BINDINGS_PYTHON
)

configure_lit_site_cfg(
	${CMAKE_CURRENT_SOURCE_DIR}/lit.site.cfg.py.in
	${CMAKE_CURRENT_BINARY_DIR}/lit.site.cfg.py
	MAIN_CONFIG
	${CMAKE_CURRENT_SOURCE_DIR}/lit.cfg.py
)

set(IGNOTA_TEST_DEPENDS
	FileCheck count not
	ignota-opt
)

if(MLIR_ENABLE_BINDINGS_PYTHON)
	list(APPEND IGNOTA_TEST_DEPENDS IgnotaPythonModules)
endif()

add_lit_testsuite(check-ignota "Running the ignota regression tests"
	${CMAKE_CURRENT_BINARY_DIR}
	DEPENDS ${IGNOTA_TEST_DEPENDS}
)
set_target_properties(check-ignota PROPERTIES FOLDER "Tests")

add_lit_testsuites(IGNOTA ${CMAKE_CURRENT_SOURCE_DIR} DEPENDS ${IGNOTA_TEST_DEPENDS})
