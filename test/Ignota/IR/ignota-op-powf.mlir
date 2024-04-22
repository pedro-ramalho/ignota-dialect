// RUN: ignota-opt %s | ignota-opt | FileCheck %s

module {
	// CHECK-LABEL: @powf(
	// CHECK-SAME: 		  %[[F:.*]]: f32)
    func.func @powf(%f: f32) {
        %a = arith.constant 2.0 : f32
        %b = arith.constant 3.0 : f32

		// CHECK: %{{.*}} = ignota.powf %[[F]], %[[F]] : f32
        %r = ignota.powf %f, %f : f32
		
		return
    }
}
