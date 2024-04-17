#include <iostream>
#include <mlir/IR/DialectRegistry.h>
#include <mlir/Tools/mlir-opt/MlirOptMain.h>

int main(int argc, char **argv) {
  std::cout << "Hello world!\n" << std::endl;

  mlir::DialectRegistry registry;

  return mlir::asMainReturnCode(
      mlir::MlirOptMain(argc, argv, "Blah", registry));
}
