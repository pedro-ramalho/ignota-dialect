// RUN: ignota-opt %s | ignota-opt | FileCheck %s

module {
    // CHECK-LABEL: @rootf(
	// CHECK-SAME: 		   %[[F:.*]]: f32)
    func.func @rootf(%f: f32) {
		// CHECK: %{{.*}} = ignota.rootf %[[F]], %[[F]] : f32
        %r = ignota.rootf %f, %f : f32

        return
    }
}