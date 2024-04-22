// RUN: ignota-opt %s | ignota-opt | FileCheck %s

module {
    // CHECK-LABEL: func @test_root()
    func.func @test_root() {
        %m = arith.constant 2.0 : f32
        %n = arith.constant 16.0 : f32

        %r = ignota.rootf %m, %n : f32

        return
    }
}