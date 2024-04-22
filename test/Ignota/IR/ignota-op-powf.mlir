// RUN: ignota-opt %s | ignota-opt | FileCheck %s

module {
	// CHECK-LABEL: @powf(
	// CHECK-SAME: 		  %[[F:.*]]: f32)
    func.func @powf(%f: f32) {
		// CHECK: %{{.*}} = ignota.powf %[[F]], %[[F]] : f32
        %r = ignota.powf %f, %f : f32
		
		return
    }
}
