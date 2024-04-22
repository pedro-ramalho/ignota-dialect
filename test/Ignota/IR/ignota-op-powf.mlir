// RUN: ignota-opt %s | ignota-opt | FileCheck %s

module {
    // CHECK-LABEL: func @test_power()
    func.func @test_power() {
        %0 = arith.constant 2.0 : f32
        %1 = arith.constant 3.0 : f32

        %2 = ignota.powf %0, %1 : f32

        return
    }
}