; ModuleID = '/home/trungnguyen/SDSoC/samples/mmult_cascade/_sds/vhls/mmult_accel/solution/.autopilot/db/a.o.2.bc'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1 ; [#uses=13 type=[1 x i8]*]
@.str2 = private unnamed_addr constant [12 x i8] c"hls_label_0\00", align 1 ; [#uses=2 type=[12 x i8]*]
@.str3 = private unnamed_addr constant [8 x i8] c"ap_fifo\00", align 1 ; [#uses=3 type=[8 x i8]*]
@.str4 = private unnamed_addr constant [12 x i8] c"hls_label_1\00", align 1 ; [#uses=2 type=[12 x i8]*]
@.str5 = private unnamed_addr constant [12 x i8] c"hls_label_2\00", align 1 ; [#uses=2 type=[12 x i8]*]
@str = internal constant [12 x i8] c"mmult_accel\00" ; [#uses=1 type=[12 x i8]*]

; [#uses=8]
declare void @llvm.dbg.declare(metadata, metadata) nounwind readnone

; [#uses=3]
declare void @_ssdm_op_SpecPipeline(...) nounwind

; [#uses=1]
declare void @_ssdm_op_SpecLatency(...) nounwind

; [#uses=3]
declare void @_ssdm_op_SpecInterface(...) nounwind

; [#uses=9]
declare void @llvm.dbg.value(metadata, i64, metadata) nounwind readnone

; [#uses=1]
declare void @_ssdm_op_SpecTopModule(...)

; [#uses=3]
declare i32 @_ssdm_op_SpecRegionBegin(...)

; [#uses=3]
declare i32 @_ssdm_op_SpecRegionEnd(...)

; [#uses=3]
declare void @_ssdm_op_SpecBitsMap(...)

; [#uses=6]
declare i32 @_ssdm_op_SpecLoopTripCount(...)

; [#uses=0]
define void @mmult_accel(float* %in_A, float* %in_B, float* %out_C) {
  call void (...)* @_ssdm_op_SpecBitsMap(float* %in_A), !map !31
  call void (...)* @_ssdm_op_SpecBitsMap(float* %in_B), !map !37
  call void (...)* @_ssdm_op_SpecBitsMap(float* %out_C), !map !41
  call void (...)* @_ssdm_op_SpecTopModule([12 x i8]* @str) nounwind
  %"a_buf[0]" = alloca [16 x [4 x float]], align 4 ; [#uses=5 type=[16 x [4 x float]]*]
  %"a_buf[1]" = alloca [16 x [4 x float]], align 4 ; [#uses=5 type=[16 x [4 x float]]*]
  %"a_buf[2]" = alloca [16 x [4 x float]], align 4 ; [#uses=5 type=[16 x [4 x float]]*]
  %"a_buf[3]" = alloca [16 x [4 x float]], align 4 ; [#uses=5 type=[16 x [4 x float]]*]
  %"b_buf[0]" = alloca [4 x [16 x float]], align 4 ; [#uses=5 type=[4 x [16 x float]]*]
  %"b_buf[1]" = alloca [4 x [16 x float]], align 4 ; [#uses=5 type=[4 x [16 x float]]*]
  %"b_buf[2]" = alloca [4 x [16 x float]], align 4 ; [#uses=5 type=[4 x [16 x float]]*]
  %"b_buf[3]" = alloca [4 x [16 x float]], align 4 ; [#uses=5 type=[4 x [16 x float]]*]
  call void @llvm.dbg.value(metadata !{float* %in_A}, i64 0, metadata !45), !dbg !49 ; [debug line = 31:25] [debug variable = in_A]
  call void @llvm.dbg.value(metadata !{float* %in_B}, i64 0, metadata !50), !dbg !51 ; [debug line = 32:25] [debug variable = in_B]
  call void @llvm.dbg.value(metadata !{float* %out_C}, i64 0, metadata !52), !dbg !53 ; [debug line = 33:25] [debug variable = out_C]
  call void (...)* @_ssdm_op_SpecLatency(i32 1, i32 65535, [1 x i8]* @.str) nounwind, !dbg !54 ; [debug line = 36:1]
  call void (...)* @_ssdm_op_SpecInterface(float* %in_A, [8 x i8]* @.str3, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @.str, [1 x i8]* @.str, [1 x i8]* @.str)
  call void (...)* @_ssdm_op_SpecInterface(float* %in_B, [8 x i8]* @.str3, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @.str, [1 x i8]* @.str, [1 x i8]* @.str)
  call void (...)* @_ssdm_op_SpecInterface(float* %out_C, [8 x i8]* @.str3, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @.str, [1 x i8]* @.str, [1 x i8]* @.str)
  call void @llvm.dbg.declare(metadata !{[16 x [4 x float]]* %"a_buf[0]"}, metadata !56), !dbg !61 ; [debug line = 44:9] [debug variable = a_buf[0]]
  call void @llvm.dbg.declare(metadata !{[16 x [4 x float]]* %"a_buf[1]"}, metadata !62), !dbg !61 ; [debug line = 44:9] [debug variable = a_buf[1]]
  call void @llvm.dbg.declare(metadata !{[16 x [4 x float]]* %"a_buf[2]"}, metadata !63), !dbg !61 ; [debug line = 44:9] [debug variable = a_buf[2]]
  call void @llvm.dbg.declare(metadata !{[16 x [4 x float]]* %"a_buf[3]"}, metadata !64), !dbg !61 ; [debug line = 44:9] [debug variable = a_buf[3]]
  call void @llvm.dbg.declare(metadata !{[4 x [16 x float]]* %"b_buf[0]"}, metadata !65), !dbg !67 ; [debug line = 45:9] [debug variable = b_buf[0]]
  call void @llvm.dbg.declare(metadata !{[4 x [16 x float]]* %"b_buf[1]"}, metadata !68), !dbg !67 ; [debug line = 45:9] [debug variable = b_buf[1]]
  call void @llvm.dbg.declare(metadata !{[4 x [16 x float]]* %"b_buf[2]"}, metadata !69), !dbg !67 ; [debug line = 45:9] [debug variable = b_buf[2]]
  call void @llvm.dbg.declare(metadata !{[4 x [16 x float]]* %"b_buf[3]"}, metadata !70), !dbg !67 ; [debug line = 45:9] [debug variable = b_buf[3]]
  br label %1, !dbg !71                           ; [debug line = 48:7]

; <label>:1                                       ; preds = %7, %0
  %i = phi i5 [ 0, %0 ], [ %i.2, %7 ]             ; [#uses=3 type=i5]
  %exitcond3 = icmp eq i5 %i, -16, !dbg !71       ; [#uses=1 type=i1] [debug line = 48:7]
  %2 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16) nounwind ; [#uses=0 type=i32]
  br i1 %exitcond3, label %.preheader4, label %.preheader5.preheader, !dbg !71 ; [debug line = 48:7]

.preheader5.preheader:                            ; preds = %1
  %tmp.1 = zext i5 %i to i64, !dbg !73            ; [#uses=4 type=i64] [debug line = 51:2]
  br label %.preheader5, !dbg !77                 ; [debug line = 49:9]

.preheader5:                                      ; preds = %5, %.preheader5.preheader
  %j = phi i5 [ %j.2, %5 ], [ 0, %.preheader5.preheader ] ; [#uses=4 type=i5]
  %exitcond2 = icmp eq i5 %j, -16, !dbg !77       ; [#uses=1 type=i1] [debug line = 49:9]
  %3 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16) nounwind ; [#uses=0 type=i32]
  br i1 %exitcond2, label %7, label %4, !dbg !77  ; [debug line = 49:9]

; <label>:4                                       ; preds = %.preheader5
  %tmp.3 = call i32 (...)* @_ssdm_op_SpecRegionBegin([12 x i8]* @.str4) nounwind, !dbg !78 ; [#uses=1 type=i32] [debug line = 49:26]
  call void (...)* @_ssdm_op_SpecPipeline(i32 1, i32 1, i32 1, i32 0, [1 x i8]* @.str) nounwind, !dbg !79 ; [debug line = 50:1]
  %in_A.load = load volatile float* %in_A, align 4, !dbg !73 ; [#uses=4 type=float] [debug line = 51:2]
  %arrayNo = lshr i5 %j, 2                        ; [#uses=1 type=i5]
  %arrayNo.cast = trunc i5 %arrayNo to i3         ; [#uses=1 type=i3]
  %newIndex = trunc i5 %j to i2                   ; [#uses=1 type=i2]
  %newIndex1 = zext i2 %newIndex to i64           ; [#uses=4 type=i64]
  %"a_buf[0].addr" = getelementptr [16 x [4 x float]]* %"a_buf[0]", i64 0, i64 %tmp.1, i64 %newIndex1, !dbg !73 ; [#uses=1 type=float*] [debug line = 51:2]
  %"a_buf[1].addr" = getelementptr [16 x [4 x float]]* %"a_buf[1]", i64 0, i64 %tmp.1, i64 %newIndex1, !dbg !73 ; [#uses=1 type=float*] [debug line = 51:2]
  %"a_buf[2].addr" = getelementptr [16 x [4 x float]]* %"a_buf[2]", i64 0, i64 %tmp.1, i64 %newIndex1, !dbg !73 ; [#uses=1 type=float*] [debug line = 51:2]
  %"a_buf[3].addr" = getelementptr [16 x [4 x float]]* %"a_buf[3]", i64 0, i64 %tmp.1, i64 %newIndex1, !dbg !73 ; [#uses=1 type=float*] [debug line = 51:2]
  switch i3 %arrayNo.cast, label %branch3 [
    i3 0, label %branch0
    i3 1, label %branch1
    i3 2, label %branch2
  ], !dbg !73                                     ; [debug line = 51:2]

; <label>:5                                       ; preds = %branch3, %branch2, %branch1, %branch0
  %6 = call i32 (...)* @_ssdm_op_SpecRegionEnd([12 x i8]* @.str4, i32 %tmp.3) nounwind, !dbg !80 ; [#uses=0 type=i32] [debug line = 52:5]
  %j.2 = add i5 %j, 1, !dbg !81                   ; [#uses=1 type=i5] [debug line = 49:20]
  call void @llvm.dbg.value(metadata !{i5 %j.2}, i64 0, metadata !82), !dbg !81 ; [debug line = 49:20] [debug variable = j]
  br label %.preheader5, !dbg !81                 ; [debug line = 49:20]

; <label>:7                                       ; preds = %.preheader5
  %i.2 = add i5 %i, 1, !dbg !83                   ; [#uses=1 type=i5] [debug line = 48:18]
  call void @llvm.dbg.value(metadata !{i5 %i.2}, i64 0, metadata !84), !dbg !83 ; [debug line = 48:18] [debug variable = i]
  br label %1, !dbg !83                           ; [debug line = 48:18]

.preheader4:                                      ; preds = %13, %1
  %i.1 = phi i5 [ %i.3, %13 ], [ 0, %1 ]          ; [#uses=4 type=i5]
  %exitcond1 = icmp eq i5 %i.1, -16, !dbg !85     ; [#uses=1 type=i1] [debug line = 56:7]
  %8 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16) nounwind ; [#uses=0 type=i32]
  br i1 %exitcond1, label %.preheader179, label %.preheader, !dbg !85 ; [debug line = 56:7]

.preheader:                                       ; preds = %11, %.preheader4
  %j.1 = phi i5 [ %j.3, %11 ], [ 0, %.preheader4 ] ; [#uses=3 type=i5]
  %exitcond = icmp eq i5 %j.1, -16, !dbg !87      ; [#uses=1 type=i1] [debug line = 57:9]
  %9 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16) nounwind ; [#uses=0 type=i32]
  br i1 %exitcond, label %13, label %10, !dbg !87 ; [debug line = 57:9]

; <label>:10                                      ; preds = %.preheader
  %tmp.7 = call i32 (...)* @_ssdm_op_SpecRegionBegin([12 x i8]* @.str5) nounwind, !dbg !90 ; [#uses=1 type=i32] [debug line = 57:26]
  call void (...)* @_ssdm_op_SpecPipeline(i32 1, i32 1, i32 1, i32 0, [1 x i8]* @.str) nounwind, !dbg !92 ; [debug line = 58:1]
  %in_B.load = load volatile float* %in_B, align 4, !dbg !93 ; [#uses=4 type=float] [debug line = 59:2]
  %tmp. = zext i5 %j.1 to i64, !dbg !93           ; [#uses=4 type=i64] [debug line = 59:2]
  %arrayNo1 = lshr i5 %i.1, 2                     ; [#uses=1 type=i5]
  %arrayNo1.cast = trunc i5 %arrayNo1 to i3       ; [#uses=1 type=i3]
  %newIndex2 = trunc i5 %i.1 to i2                ; [#uses=1 type=i2]
  %newIndex3 = zext i2 %newIndex2 to i64          ; [#uses=4 type=i64]
  %"b_buf[0].addr" = getelementptr [4 x [16 x float]]* %"b_buf[0]", i64 0, i64 %newIndex3, i64 %tmp., !dbg !93 ; [#uses=1 type=float*] [debug line = 59:2]
  %"b_buf[1].addr" = getelementptr [4 x [16 x float]]* %"b_buf[1]", i64 0, i64 %newIndex3, i64 %tmp., !dbg !93 ; [#uses=1 type=float*] [debug line = 59:2]
  %"b_buf[2].addr" = getelementptr [4 x [16 x float]]* %"b_buf[2]", i64 0, i64 %newIndex3, i64 %tmp., !dbg !93 ; [#uses=1 type=float*] [debug line = 59:2]
  %"b_buf[3].addr" = getelementptr [4 x [16 x float]]* %"b_buf[3]", i64 0, i64 %newIndex3, i64 %tmp., !dbg !93 ; [#uses=1 type=float*] [debug line = 59:2]
  switch i3 %arrayNo1.cast, label %branch7 [
    i3 0, label %branch4
    i3 1, label %branch5
    i3 2, label %branch6
  ], !dbg !93                                     ; [debug line = 59:2]

; <label>:11                                      ; preds = %branch7, %branch6, %branch5, %branch4
  %12 = call i32 (...)* @_ssdm_op_SpecRegionEnd([12 x i8]* @.str5, i32 %tmp.7) nounwind, !dbg !94 ; [#uses=0 type=i32] [debug line = 60:5]
  %j.3 = add i5 %j.1, 1, !dbg !95                 ; [#uses=1 type=i5] [debug line = 57:20]
  call void @llvm.dbg.value(metadata !{i5 %j.3}, i64 0, metadata !82), !dbg !95 ; [debug line = 57:20] [debug variable = j]
  br label %.preheader, !dbg !95                  ; [debug line = 57:20]

; <label>:13                                      ; preds = %.preheader
  %i.3 = add i5 %i.1, 1, !dbg !96                 ; [#uses=1 type=i5] [debug line = 56:18]
  call void @llvm.dbg.value(metadata !{i5 %i.3}, i64 0, metadata !84), !dbg !96 ; [debug line = 56:18] [debug variable = i]
  br label %.preheader4, !dbg !96                 ; [debug line = 56:18]

.preheader179:                                    ; preds = %18, %.preheader4
  %index_a.0.i = phi i5 [ %index_a, %18 ], [ 0, %.preheader4 ] ; [#uses=3 type=i5]
  %exitcond2.i = icmp eq i5 %index_a.0.i, -16, !dbg !97 ; [#uses=1 type=i1] [debug line = 16:8@64:3]
  %14 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16) nounwind ; [#uses=0 type=i32]
  br i1 %exitcond2.i, label %mmult_kernel.exit, label %.preheader.preheader.i, !dbg !97 ; [debug line = 16:8@64:3]

.preheader.preheader.i:                           ; preds = %.preheader179
  %tmp.9 = zext i5 %index_a.0.i to i64, !dbg !101 ; [#uses=16 type=i64] [debug line = 23:77@64:3]
  br label %.preheader.i, !dbg !107               ; [debug line = 17:10@64:3]

.preheader.i:                                     ; preds = %16, %.preheader.preheader.i
  %index_b.0.i = phi i5 [ %index_b, %16 ], [ 0, %.preheader.preheader.i ] ; [#uses=3 type=i5]
  %exitcond1.i = icmp eq i5 %index_b.0.i, -16, !dbg !107 ; [#uses=1 type=i1] [debug line = 17:10@64:3]
  %15 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16) nounwind ; [#uses=0 type=i32]
  br i1 %exitcond1.i, label %18, label %16, !dbg !107 ; [debug line = 17:10@64:3]

; <label>:16                                      ; preds = %.preheader.i
  %tmp.2 = call i32 (...)* @_ssdm_op_SpecRegionBegin([12 x i8]* @.str2) nounwind, !dbg !108 ; [#uses=1 type=i32] [debug line = 17:49@64:3]
  call void (...)* @_ssdm_op_SpecPipeline(i32 1, i32 1, i32 1, i32 0, [1 x i8]* @.str) nounwind, !dbg !109 ; [debug line = 18:1@64:3]
  %tmp.4 = zext i5 %index_b.0.i to i64, !dbg !101 ; [#uses=16 type=i64] [debug line = 23:77@64:3]
  %"a_buf[0].addr.1" = getelementptr [16 x [4 x float]]* %"a_buf[0]", i64 0, i64 %tmp.9, i64 0 ; [#uses=1 type=float*]
  %"a_buf[0].load" = load float* %"a_buf[0].addr.1", align 16, !dbg !101 ; [#uses=1 type=float] [debug line = 23:77@64:3]
  %"b_buf[0].addr.1" = getelementptr [4 x [16 x float]]* %"b_buf[0]", i64 0, i64 0, i64 %tmp.4 ; [#uses=1 type=float*]
  %"b_buf[0].load" = load float* %"b_buf[0].addr.1", align 4, !dbg !101 ; [#uses=1 type=float] [debug line = 23:77@64:3]
  %product_term = fmul float %"a_buf[0].load", %"b_buf[0].load", !dbg !101 ; [#uses=1 type=float] [debug line = 23:77@64:3]
  %result = fadd float %product_term, 0.000000e+00, !dbg !110 ; [#uses=1 type=float] [debug line = 24:9@64:3]
  %"a_buf[0].addr.2" = getelementptr [16 x [4 x float]]* %"a_buf[0]", i64 0, i64 %tmp.9, i64 1 ; [#uses=1 type=float*]
  %"a_buf[0].load.1" = load float* %"a_buf[0].addr.2", align 4, !dbg !101 ; [#uses=1 type=float] [debug line = 23:77@64:3]
  %"b_buf[0].addr.2" = getelementptr [4 x [16 x float]]* %"b_buf[0]", i64 0, i64 1, i64 %tmp.4 ; [#uses=1 type=float*]
  %"b_buf[0].load.1" = load float* %"b_buf[0].addr.2", align 4, !dbg !101 ; [#uses=1 type=float] [debug line = 23:77@64:3]
  %product_term.1 = fmul float %"a_buf[0].load.1", %"b_buf[0].load.1", !dbg !101 ; [#uses=1 type=float] [debug line = 23:77@64:3]
  %result.1 = fadd float %result, %product_term.1, !dbg !110 ; [#uses=1 type=float] [debug line = 24:9@64:3]
  %"a_buf[0].addr.3" = getelementptr [16 x [4 x float]]* %"a_buf[0]", i64 0, i64 %tmp.9, i64 2 ; [#uses=1 type=float*]
  %"a_buf[0].load.2" = load float* %"a_buf[0].addr.3", align 8, !dbg !101 ; [#uses=1 type=float] [debug line = 23:77@64:3]
  %"b_buf[0].addr.3" = getelementptr [4 x [16 x float]]* %"b_buf[0]", i64 0, i64 2, i64 %tmp.4 ; [#uses=1 type=float*]
  %"b_buf[0].load.2" = load float* %"b_buf[0].addr.3", align 4, !dbg !101 ; [#uses=1 type=float] [debug line = 23:77@64:3]
  %product_term.2 = fmul float %"a_buf[0].load.2", %"b_buf[0].load.2", !dbg !101 ; [#uses=1 type=float] [debug line = 23:77@64:3]
  %result.2 = fadd float %result.1, %product_term.2, !dbg !110 ; [#uses=1 type=float] [debug line = 24:9@64:3]
  %"a_buf[0].addr.4" = getelementptr [16 x [4 x float]]* %"a_buf[0]", i64 0, i64 %tmp.9, i64 3 ; [#uses=1 type=float*]
  %"a_buf[0].load.3" = load float* %"a_buf[0].addr.4", align 4, !dbg !101 ; [#uses=1 type=float] [debug line = 23:77@64:3]
  %"b_buf[0].addr.4" = getelementptr [4 x [16 x float]]* %"b_buf[0]", i64 0, i64 3, i64 %tmp.4 ; [#uses=1 type=float*]
  %"b_buf[0].load.3" = load float* %"b_buf[0].addr.4", align 4, !dbg !101 ; [#uses=1 type=float] [debug line = 23:77@64:3]
  %product_term.3 = fmul float %"a_buf[0].load.3", %"b_buf[0].load.3", !dbg !101 ; [#uses=1 type=float] [debug line = 23:77@64:3]
  %result.3 = fadd float %result.2, %product_term.3, !dbg !110 ; [#uses=1 type=float] [debug line = 24:9@64:3]
  %"a_buf[1].addr.1" = getelementptr [16 x [4 x float]]* %"a_buf[1]", i64 0, i64 %tmp.9, i64 0 ; [#uses=1 type=float*]
  %"a_buf[1].load" = load float* %"a_buf[1].addr.1", align 16, !dbg !101 ; [#uses=1 type=float] [debug line = 23:77@64:3]
  %"b_buf[1].addr.1" = getelementptr [4 x [16 x float]]* %"b_buf[1]", i64 0, i64 0, i64 %tmp.4 ; [#uses=1 type=float*]
  %"b_buf[1].load" = load float* %"b_buf[1].addr.1", align 4, !dbg !101 ; [#uses=1 type=float] [debug line = 23:77@64:3]
  %product_term.4 = fmul float %"a_buf[1].load", %"b_buf[1].load", !dbg !101 ; [#uses=1 type=float] [debug line = 23:77@64:3]
  %result.4 = fadd float %result.3, %product_term.4, !dbg !110 ; [#uses=1 type=float] [debug line = 24:9@64:3]
  %"a_buf[1].addr.2" = getelementptr [16 x [4 x float]]* %"a_buf[1]", i64 0, i64 %tmp.9, i64 1 ; [#uses=1 type=float*]
  %"a_buf[1].load.1" = load float* %"a_buf[1].addr.2", align 4, !dbg !101 ; [#uses=1 type=float] [debug line = 23:77@64:3]
  %"b_buf[1].addr.2" = getelementptr [4 x [16 x float]]* %"b_buf[1]", i64 0, i64 1, i64 %tmp.4 ; [#uses=1 type=float*]
  %"b_buf[1].load.1" = load float* %"b_buf[1].addr.2", align 4, !dbg !101 ; [#uses=1 type=float] [debug line = 23:77@64:3]
  %product_term.5 = fmul float %"a_buf[1].load.1", %"b_buf[1].load.1", !dbg !101 ; [#uses=1 type=float] [debug line = 23:77@64:3]
  %result.5 = fadd float %result.4, %product_term.5, !dbg !110 ; [#uses=1 type=float] [debug line = 24:9@64:3]
  %"a_buf[1].addr.3" = getelementptr [16 x [4 x float]]* %"a_buf[1]", i64 0, i64 %tmp.9, i64 2 ; [#uses=1 type=float*]
  %"a_buf[1].load.2" = load float* %"a_buf[1].addr.3", align 8, !dbg !101 ; [#uses=1 type=float] [debug line = 23:77@64:3]
  %"b_buf[1].addr.3" = getelementptr [4 x [16 x float]]* %"b_buf[1]", i64 0, i64 2, i64 %tmp.4 ; [#uses=1 type=float*]
  %"b_buf[1].load.2" = load float* %"b_buf[1].addr.3", align 4, !dbg !101 ; [#uses=1 type=float] [debug line = 23:77@64:3]
  %product_term.6 = fmul float %"a_buf[1].load.2", %"b_buf[1].load.2", !dbg !101 ; [#uses=1 type=float] [debug line = 23:77@64:3]
  %result.6 = fadd float %result.5, %product_term.6, !dbg !110 ; [#uses=1 type=float] [debug line = 24:9@64:3]
  %"a_buf[1].addr.4" = getelementptr [16 x [4 x float]]* %"a_buf[1]", i64 0, i64 %tmp.9, i64 3 ; [#uses=1 type=float*]
  %"a_buf[1].load.3" = load float* %"a_buf[1].addr.4", align 4, !dbg !101 ; [#uses=1 type=float] [debug line = 23:77@64:3]
  %"b_buf[1].addr.4" = getelementptr [4 x [16 x float]]* %"b_buf[1]", i64 0, i64 3, i64 %tmp.4 ; [#uses=1 type=float*]
  %"b_buf[1].load.3" = load float* %"b_buf[1].addr.4", align 4, !dbg !101 ; [#uses=1 type=float] [debug line = 23:77@64:3]
  %product_term.7 = fmul float %"a_buf[1].load.3", %"b_buf[1].load.3", !dbg !101 ; [#uses=1 type=float] [debug line = 23:77@64:3]
  %result.7 = fadd float %result.6, %product_term.7, !dbg !110 ; [#uses=1 type=float] [debug line = 24:9@64:3]
  %"a_buf[2].addr.1" = getelementptr [16 x [4 x float]]* %"a_buf[2]", i64 0, i64 %tmp.9, i64 0 ; [#uses=1 type=float*]
  %"a_buf[2].load" = load float* %"a_buf[2].addr.1", align 16, !dbg !101 ; [#uses=1 type=float] [debug line = 23:77@64:3]
  %"b_buf[2].addr.1" = getelementptr [4 x [16 x float]]* %"b_buf[2]", i64 0, i64 0, i64 %tmp.4 ; [#uses=1 type=float*]
  %"b_buf[2].load" = load float* %"b_buf[2].addr.1", align 4, !dbg !101 ; [#uses=1 type=float] [debug line = 23:77@64:3]
  %product_term.8 = fmul float %"a_buf[2].load", %"b_buf[2].load", !dbg !101 ; [#uses=1 type=float] [debug line = 23:77@64:3]
  %result.8 = fadd float %result.7, %product_term.8, !dbg !110 ; [#uses=1 type=float] [debug line = 24:9@64:3]
  %"a_buf[2].addr.2" = getelementptr [16 x [4 x float]]* %"a_buf[2]", i64 0, i64 %tmp.9, i64 1 ; [#uses=1 type=float*]
  %"a_buf[2].load.1" = load float* %"a_buf[2].addr.2", align 4, !dbg !101 ; [#uses=1 type=float] [debug line = 23:77@64:3]
  %"b_buf[2].addr.2" = getelementptr [4 x [16 x float]]* %"b_buf[2]", i64 0, i64 1, i64 %tmp.4 ; [#uses=1 type=float*]
  %"b_buf[2].load.1" = load float* %"b_buf[2].addr.2", align 4, !dbg !101 ; [#uses=1 type=float] [debug line = 23:77@64:3]
  %product_term.9 = fmul float %"a_buf[2].load.1", %"b_buf[2].load.1", !dbg !101 ; [#uses=1 type=float] [debug line = 23:77@64:3]
  %result.9 = fadd float %result.8, %product_term.9, !dbg !110 ; [#uses=1 type=float] [debug line = 24:9@64:3]
  %"a_buf[2].addr.3" = getelementptr [16 x [4 x float]]* %"a_buf[2]", i64 0, i64 %tmp.9, i64 2 ; [#uses=1 type=float*]
  %"a_buf[2].load.2" = load float* %"a_buf[2].addr.3", align 8, !dbg !101 ; [#uses=1 type=float] [debug line = 23:77@64:3]
  %"b_buf[2].addr.3" = getelementptr [4 x [16 x float]]* %"b_buf[2]", i64 0, i64 2, i64 %tmp.4 ; [#uses=1 type=float*]
  %"b_buf[2].load.2" = load float* %"b_buf[2].addr.3", align 4, !dbg !101 ; [#uses=1 type=float] [debug line = 23:77@64:3]
  %product_term. = fmul float %"a_buf[2].load.2", %"b_buf[2].load.2", !dbg !101 ; [#uses=1 type=float] [debug line = 23:77@64:3]
  %result. = fadd float %result.9, %product_term., !dbg !110 ; [#uses=1 type=float] [debug line = 24:9@64:3]
  %"a_buf[2].addr.4" = getelementptr [16 x [4 x float]]* %"a_buf[2]", i64 0, i64 %tmp.9, i64 3 ; [#uses=1 type=float*]
  %"a_buf[2].load.3" = load float* %"a_buf[2].addr.4", align 4, !dbg !101 ; [#uses=1 type=float] [debug line = 23:77@64:3]
  %"b_buf[2].addr.4" = getelementptr [4 x [16 x float]]* %"b_buf[2]", i64 0, i64 3, i64 %tmp.4 ; [#uses=1 type=float*]
  %"b_buf[2].load.3" = load float* %"b_buf[2].addr.4", align 4, !dbg !101 ; [#uses=1 type=float] [debug line = 23:77@64:3]
  %product_term.10 = fmul float %"a_buf[2].load.3", %"b_buf[2].load.3", !dbg !101 ; [#uses=1 type=float] [debug line = 23:77@64:3]
  %result.10 = fadd float %result., %product_term.10, !dbg !110 ; [#uses=1 type=float] [debug line = 24:9@64:3]
  %"a_buf[3].addr.1" = getelementptr [16 x [4 x float]]* %"a_buf[3]", i64 0, i64 %tmp.9, i64 0 ; [#uses=1 type=float*]
  %"a_buf[3].load" = load float* %"a_buf[3].addr.1", align 16, !dbg !101 ; [#uses=1 type=float] [debug line = 23:77@64:3]
  %"b_buf[3].addr.1" = getelementptr [4 x [16 x float]]* %"b_buf[3]", i64 0, i64 0, i64 %tmp.4 ; [#uses=1 type=float*]
  %"b_buf[3].load" = load float* %"b_buf[3].addr.1", align 4, !dbg !101 ; [#uses=1 type=float] [debug line = 23:77@64:3]
  %product_term.11 = fmul float %"a_buf[3].load", %"b_buf[3].load", !dbg !101 ; [#uses=1 type=float] [debug line = 23:77@64:3]
  %result.11 = fadd float %result.10, %product_term.11, !dbg !110 ; [#uses=1 type=float] [debug line = 24:9@64:3]
  %"a_buf[3].addr.2" = getelementptr [16 x [4 x float]]* %"a_buf[3]", i64 0, i64 %tmp.9, i64 1 ; [#uses=1 type=float*]
  %"a_buf[3].load.1" = load float* %"a_buf[3].addr.2", align 4, !dbg !101 ; [#uses=1 type=float] [debug line = 23:77@64:3]
  %"b_buf[3].addr.2" = getelementptr [4 x [16 x float]]* %"b_buf[3]", i64 0, i64 1, i64 %tmp.4 ; [#uses=1 type=float*]
  %"b_buf[3].load.1" = load float* %"b_buf[3].addr.2", align 4, !dbg !101 ; [#uses=1 type=float] [debug line = 23:77@64:3]
  %product_term.12 = fmul float %"a_buf[3].load.1", %"b_buf[3].load.1", !dbg !101 ; [#uses=1 type=float] [debug line = 23:77@64:3]
  %result.12 = fadd float %result.11, %product_term.12, !dbg !110 ; [#uses=1 type=float] [debug line = 24:9@64:3]
  %"a_buf[3].addr.3" = getelementptr [16 x [4 x float]]* %"a_buf[3]", i64 0, i64 %tmp.9, i64 2 ; [#uses=1 type=float*]
  %"a_buf[3].load.2" = load float* %"a_buf[3].addr.3", align 8, !dbg !101 ; [#uses=1 type=float] [debug line = 23:77@64:3]
  %"b_buf[3].addr.3" = getelementptr [4 x [16 x float]]* %"b_buf[3]", i64 0, i64 2, i64 %tmp.4 ; [#uses=1 type=float*]
  %"b_buf[3].load.2" = load float* %"b_buf[3].addr.3", align 4, !dbg !101 ; [#uses=1 type=float] [debug line = 23:77@64:3]
  %product_term.13 = fmul float %"a_buf[3].load.2", %"b_buf[3].load.2", !dbg !101 ; [#uses=1 type=float] [debug line = 23:77@64:3]
  %result.13 = fadd float %result.12, %product_term.13, !dbg !110 ; [#uses=1 type=float] [debug line = 24:9@64:3]
  %"a_buf[3].addr.4" = getelementptr [16 x [4 x float]]* %"a_buf[3]", i64 0, i64 %tmp.9, i64 3 ; [#uses=1 type=float*]
  %"a_buf[3].load.3" = load float* %"a_buf[3].addr.4", align 4, !dbg !101 ; [#uses=1 type=float] [debug line = 23:77@64:3]
  %"b_buf[3].addr.4" = getelementptr [4 x [16 x float]]* %"b_buf[3]", i64 0, i64 3, i64 %tmp.4 ; [#uses=1 type=float*]
  %"b_buf[3].load.3" = load float* %"b_buf[3].addr.4", align 4, !dbg !101 ; [#uses=1 type=float] [debug line = 23:77@64:3]
  %product_term.14 = fmul float %"a_buf[3].load.3", %"b_buf[3].load.3", !dbg !101 ; [#uses=1 type=float] [debug line = 23:77@64:3]
  %result.14 = fadd float %result.13, %product_term.14, !dbg !110 ; [#uses=1 type=float] [debug line = 24:9@64:3]
  store volatile float %result.14, float* %out_C, align 4, !dbg !111 ; [debug line = 26:7@64:3]
  %17 = call i32 (...)* @_ssdm_op_SpecRegionEnd([12 x i8]* @.str2, i32 %tmp.2) nounwind, !dbg !112 ; [#uses=0 type=i32] [debug line = 27:5@64:3]
  %index_b = add i5 %index_b.0.i, 1, !dbg !113    ; [#uses=1 type=i5] [debug line = 17:37@64:3]
  call void @llvm.dbg.value(metadata !{i5 %index_b}, i64 0, metadata !114) nounwind, !dbg !113 ; [debug line = 17:37@64:3] [debug variable = index_b]
  br label %.preheader.i, !dbg !113               ; [debug line = 17:37@64:3]

; <label>:18                                      ; preds = %.preheader.i
  %index_a = add i5 %index_a.0.i, 1, !dbg !115    ; [#uses=1 type=i5] [debug line = 16:35@64:3]
  call void @llvm.dbg.value(metadata !{i5 %index_a}, i64 0, metadata !116) nounwind, !dbg !115 ; [debug line = 16:35@64:3] [debug variable = index_a]
  br label %.preheader179, !dbg !115              ; [debug line = 16:35@64:3]

mmult_kernel.exit:                                ; preds = %.preheader179
  ret void, !dbg !117                             ; [debug line = 65:1]

branch0:                                          ; preds = %4
  store float %in_A.load, float* %"a_buf[0].addr", align 4, !dbg !73 ; [debug line = 51:2]
  br label %5, !dbg !73                           ; [debug line = 51:2]

branch1:                                          ; preds = %4
  store float %in_A.load, float* %"a_buf[1].addr", align 4, !dbg !73 ; [debug line = 51:2]
  br label %5, !dbg !73                           ; [debug line = 51:2]

branch2:                                          ; preds = %4
  store float %in_A.load, float* %"a_buf[2].addr", align 4, !dbg !73 ; [debug line = 51:2]
  br label %5, !dbg !73                           ; [debug line = 51:2]

branch3:                                          ; preds = %4
  store float %in_A.load, float* %"a_buf[3].addr", align 4, !dbg !73 ; [debug line = 51:2]
  br label %5, !dbg !73                           ; [debug line = 51:2]

branch4:                                          ; preds = %10
  store float %in_B.load, float* %"b_buf[0].addr", align 4, !dbg !93 ; [debug line = 59:2]
  br label %11, !dbg !93                          ; [debug line = 59:2]

branch5:                                          ; preds = %10
  store float %in_B.load, float* %"b_buf[1].addr", align 4, !dbg !93 ; [debug line = 59:2]
  br label %11, !dbg !93                          ; [debug line = 59:2]

branch6:                                          ; preds = %10
  store float %in_B.load, float* %"b_buf[2].addr", align 4, !dbg !93 ; [debug line = 59:2]
  br label %11, !dbg !93                          ; [debug line = 59:2]

branch7:                                          ; preds = %10
  store float %in_B.load, float* %"b_buf[3].addr", align 4, !dbg !93 ; [debug line = 59:2]
  br label %11, !dbg !93                          ; [debug line = 59:2]
}

!llvm.dbg.cu = !{!0}
!llvm.map.gv = !{}

!0 = metadata !{i32 786449, i32 0, i32 4, metadata !"/home/trungnguyen/SDSoC/samples/mmult_cascade/_sds/vhls/mmult_accel/solution/.autopilot/db/mmult_accel.pragma.2.cpp", metadata !"/home/trungnguyen/SDSoC/samples/mmult_cascade/_sds/vhls", metadata !"clang version 3.1 ", i1 true, i1 false, metadata !"", i32 0, metadata !1, metadata !1, metadata !3, metadata !20} ; [ DW_TAG_compile_unit ]
!1 = metadata !{metadata !2}
!2 = metadata !{i32 0}
!3 = metadata !{metadata !4}
!4 = metadata !{metadata !5, metadata !17}
!5 = metadata !{i32 786478, i32 0, metadata !6, metadata !"mmult_kernel", metadata !"mmult_kernel", metadata !"_Z12mmult_kernelPA16_fS0_Pf", metadata !6, i32 6, metadata !7, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, null, metadata !15, i32 9} ; [ DW_TAG_subprogram ]
!6 = metadata !{i32 786473, metadata !"/home/trungnguyen/SDSoC/samples/mmult_cascade/_sds/vhls/src/mmult_accel.cpp", metadata !"/home/trungnguyen/SDSoC/samples/mmult_cascade/_sds/vhls", null} ; [ DW_TAG_file_type ]
!7 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !8, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!8 = metadata !{null, metadata !9, metadata !9, metadata !14}
!9 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !10} ; [ DW_TAG_pointer_type ]
!10 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 512, i64 32, i32 0, i32 0, metadata !11, metadata !12, i32 0, i32 0} ; [ DW_TAG_array_type ]
!11 = metadata !{i32 786468, null, metadata !"float", null, i32 0, i64 32, i64 32, i64 0, i32 0, i32 4} ; [ DW_TAG_base_type ]
!12 = metadata !{metadata !13}
!13 = metadata !{i32 786465, i64 0, i64 15}       ; [ DW_TAG_subrange_type ]
!14 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !11} ; [ DW_TAG_pointer_type ]
!15 = metadata !{metadata !16}
!16 = metadata !{i32 786468}                      ; [ DW_TAG_base_type ]
!17 = metadata !{i32 786478, i32 0, metadata !6, metadata !"mmult_accel", metadata !"mmult_accel", metadata !"_Z11mmult_accelPfS_S_", metadata !6, i32 31, metadata !18, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, null, metadata !15, i32 34} ; [ DW_TAG_subprogram ]
!18 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !19, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!19 = metadata !{null, metadata !14, metadata !14, metadata !14}
!20 = metadata !{metadata !21}
!21 = metadata !{metadata !22, metadata !25, metadata !26, metadata !27, metadata !30}
!22 = metadata !{i32 786484, i32 0, null, metadata !"_IO_2_1_stdin_", metadata !"_IO_2_1_stdin_", metadata !"", metadata !23, i32 346, metadata !24, i32 0, i32 1, null} ; [ DW_TAG_variable ]
!23 = metadata !{i32 786473, metadata !"/usr/include/libio.h", metadata !"/home/trungnguyen/SDSoC/samples/mmult_cascade/_sds/vhls", null} ; [ DW_TAG_file_type ]
!24 = metadata !{i32 786434, null, metadata !"_IO_FILE_plus", metadata !23, i32 344, i32 0, i32 0, i32 0, i32 4, null, null, i32 0} ; [ DW_TAG_class_type ]
!25 = metadata !{i32 786484, i32 0, null, metadata !"_IO_2_1_stdout_", metadata !"_IO_2_1_stdout_", metadata !"", metadata !23, i32 347, metadata !24, i32 0, i32 1, null} ; [ DW_TAG_variable ]
!26 = metadata !{i32 786484, i32 0, null, metadata !"_IO_2_1_stderr_", metadata !"_IO_2_1_stderr_", metadata !"", metadata !23, i32 348, metadata !24, i32 0, i32 1, null} ; [ DW_TAG_variable ]
!27 = metadata !{i32 786484, i32 0, null, metadata !"sys_nerr", metadata !"sys_nerr", metadata !"", metadata !28, i32 27, metadata !29, i32 0, i32 1, null} ; [ DW_TAG_variable ]
!28 = metadata !{i32 786473, metadata !"/usr/include/bits/sys_errlist.h", metadata !"/home/trungnguyen/SDSoC/samples/mmult_cascade/_sds/vhls", null} ; [ DW_TAG_file_type ]
!29 = metadata !{i32 786468, null, metadata !"int", null, i32 0, i64 32, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ]
!30 = metadata !{i32 786484, i32 0, null, metadata !"_sys_nerr", metadata !"_sys_nerr", metadata !"", metadata !28, i32 31, metadata !29, i32 0, i32 1, null} ; [ DW_TAG_variable ]
!31 = metadata !{metadata !32}
!32 = metadata !{i32 0, i32 31, metadata !33}
!33 = metadata !{metadata !34}
!34 = metadata !{metadata !"in_A", metadata !35, metadata !"float", i32 0, i32 31}
!35 = metadata !{metadata !36}
!36 = metadata !{i32 0, i32 255, i32 1}
!37 = metadata !{metadata !38}
!38 = metadata !{i32 0, i32 31, metadata !39}
!39 = metadata !{metadata !40}
!40 = metadata !{metadata !"in_B", metadata !35, metadata !"float", i32 0, i32 31}
!41 = metadata !{metadata !42}
!42 = metadata !{i32 0, i32 31, metadata !43}
!43 = metadata !{metadata !44}
!44 = metadata !{metadata !"out_C", metadata !35, metadata !"float", i32 0, i32 31}
!45 = metadata !{i32 786689, metadata !17, metadata !"in_A", null, i32 31, metadata !46, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!46 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 8192, i64 32, i32 0, i32 0, metadata !11, metadata !47, i32 0, i32 0} ; [ DW_TAG_array_type ]
!47 = metadata !{metadata !48}
!48 = metadata !{i32 786465, i64 0, i64 255}      ; [ DW_TAG_subrange_type ]
!49 = metadata !{i32 31, i32 25, metadata !17, null}
!50 = metadata !{i32 786689, metadata !17, metadata !"in_B", null, i32 32, metadata !46, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!51 = metadata !{i32 32, i32 25, metadata !17, null}
!52 = metadata !{i32 786689, metadata !17, metadata !"out_C", null, i32 33, metadata !46, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!53 = metadata !{i32 33, i32 25, metadata !17, null}
!54 = metadata !{i32 36, i32 1, metadata !55, null}
!55 = metadata !{i32 786443, metadata !17, i32 34, i32 1, metadata !6, i32 7} ; [ DW_TAG_lexical_block ]
!56 = metadata !{i32 790529, metadata !57, metadata !"a_buf[0]", null, i32 44, metadata !60, i32 0, i32 0} ; [ DW_TAG_auto_variable_field ]
!57 = metadata !{i32 786688, metadata !55, metadata !"a_buf", metadata !6, i32 44, metadata !58, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!58 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 8192, i64 32, i32 0, i32 0, metadata !11, metadata !59, i32 0, i32 0} ; [ DW_TAG_array_type ]
!59 = metadata !{metadata !13, metadata !13}
!60 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 2048, i64 32, i32 0, i32 0, metadata !11, metadata !59, i32 0, i32 0} ; [ DW_TAG_array_type ]
!61 = metadata !{i32 44, i32 9, metadata !55, null}
!62 = metadata !{i32 790529, metadata !57, metadata !"a_buf[1]", null, i32 44, metadata !60, i32 0, i32 0} ; [ DW_TAG_auto_variable_field ]
!63 = metadata !{i32 790529, metadata !57, metadata !"a_buf[2]", null, i32 44, metadata !60, i32 0, i32 0} ; [ DW_TAG_auto_variable_field ]
!64 = metadata !{i32 790529, metadata !57, metadata !"a_buf[3]", null, i32 44, metadata !60, i32 0, i32 0} ; [ DW_TAG_auto_variable_field ]
!65 = metadata !{i32 790529, metadata !66, metadata !"b_buf[0]", null, i32 45, metadata !60, i32 0, i32 0} ; [ DW_TAG_auto_variable_field ]
!66 = metadata !{i32 786688, metadata !55, metadata !"b_buf", metadata !6, i32 45, metadata !58, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!67 = metadata !{i32 45, i32 9, metadata !55, null}
!68 = metadata !{i32 790529, metadata !66, metadata !"b_buf[1]", null, i32 45, metadata !60, i32 0, i32 0} ; [ DW_TAG_auto_variable_field ]
!69 = metadata !{i32 790529, metadata !66, metadata !"b_buf[2]", null, i32 45, metadata !60, i32 0, i32 0} ; [ DW_TAG_auto_variable_field ]
!70 = metadata !{i32 790529, metadata !66, metadata !"b_buf[3]", null, i32 45, metadata !60, i32 0, i32 0} ; [ DW_TAG_auto_variable_field ]
!71 = metadata !{i32 48, i32 7, metadata !72, null}
!72 = metadata !{i32 786443, metadata !55, i32 48, i32 3, metadata !6, i32 8} ; [ DW_TAG_lexical_block ]
!73 = metadata !{i32 51, i32 2, metadata !74, null}
!74 = metadata !{i32 786443, metadata !75, i32 49, i32 25, metadata !6, i32 11} ; [ DW_TAG_lexical_block ]
!75 = metadata !{i32 786443, metadata !76, i32 49, i32 5, metadata !6, i32 10} ; [ DW_TAG_lexical_block ]
!76 = metadata !{i32 786443, metadata !72, i32 48, i32 23, metadata !6, i32 9} ; [ DW_TAG_lexical_block ]
!77 = metadata !{i32 49, i32 9, metadata !75, null}
!78 = metadata !{i32 49, i32 26, metadata !74, null}
!79 = metadata !{i32 50, i32 1, metadata !74, null}
!80 = metadata !{i32 52, i32 5, metadata !74, null}
!81 = metadata !{i32 49, i32 20, metadata !75, null}
!82 = metadata !{i32 786688, metadata !55, metadata !"j", metadata !6, i32 43, metadata !29, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!83 = metadata !{i32 48, i32 18, metadata !72, null}
!84 = metadata !{i32 786688, metadata !55, metadata !"i", metadata !6, i32 43, metadata !29, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!85 = metadata !{i32 56, i32 7, metadata !86, null}
!86 = metadata !{i32 786443, metadata !55, i32 56, i32 3, metadata !6, i32 12} ; [ DW_TAG_lexical_block ]
!87 = metadata !{i32 57, i32 9, metadata !88, null}
!88 = metadata !{i32 786443, metadata !89, i32 57, i32 5, metadata !6, i32 14} ; [ DW_TAG_lexical_block ]
!89 = metadata !{i32 786443, metadata !86, i32 56, i32 23, metadata !6, i32 13} ; [ DW_TAG_lexical_block ]
!90 = metadata !{i32 57, i32 26, metadata !91, null}
!91 = metadata !{i32 786443, metadata !88, i32 57, i32 25, metadata !6, i32 15} ; [ DW_TAG_lexical_block ]
!92 = metadata !{i32 58, i32 1, metadata !91, null}
!93 = metadata !{i32 59, i32 2, metadata !91, null}
!94 = metadata !{i32 60, i32 5, metadata !91, null}
!95 = metadata !{i32 57, i32 20, metadata !88, null}
!96 = metadata !{i32 56, i32 18, metadata !86, null}
!97 = metadata !{i32 16, i32 8, metadata !98, metadata !100}
!98 = metadata !{i32 786443, metadata !99, i32 16, i32 3, metadata !6, i32 1} ; [ DW_TAG_lexical_block ]
!99 = metadata !{i32 786443, metadata !5, i32 9, i32 1, metadata !6, i32 0} ; [ DW_TAG_lexical_block ]
!100 = metadata !{i32 64, i32 3, metadata !55, null}
!101 = metadata !{i32 23, i32 77, metadata !102, metadata !100}
!102 = metadata !{i32 786443, metadata !103, i32 20, i32 50, metadata !6, i32 6} ; [ DW_TAG_lexical_block ]
!103 = metadata !{i32 786443, metadata !104, i32 20, i32 7, metadata !6, i32 5} ; [ DW_TAG_lexical_block ]
!104 = metadata !{i32 786443, metadata !105, i32 17, i32 48, metadata !6, i32 4} ; [ DW_TAG_lexical_block ]
!105 = metadata !{i32 786443, metadata !106, i32 17, i32 5, metadata !6, i32 3} ; [ DW_TAG_lexical_block ]
!106 = metadata !{i32 786443, metadata !98, i32 16, i32 46, metadata !6, i32 2} ; [ DW_TAG_lexical_block ]
!107 = metadata !{i32 17, i32 10, metadata !105, metadata !100}
!108 = metadata !{i32 17, i32 49, metadata !104, metadata !100}
!109 = metadata !{i32 18, i32 1, metadata !104, metadata !100}
!110 = metadata !{i32 24, i32 9, metadata !102, metadata !100}
!111 = metadata !{i32 26, i32 7, metadata !104, metadata !100}
!112 = metadata !{i32 27, i32 5, metadata !104, metadata !100}
!113 = metadata !{i32 17, i32 37, metadata !105, metadata !100}
!114 = metadata !{i32 786688, metadata !99, metadata !"index_b", metadata !6, i32 14, metadata !29, i32 0, metadata !100} ; [ DW_TAG_auto_variable ]
!115 = metadata !{i32 16, i32 35, metadata !98, metadata !100}
!116 = metadata !{i32 786688, metadata !99, metadata !"index_a", metadata !6, i32 14, metadata !29, i32 0, metadata !100} ; [ DW_TAG_auto_variable ]
!117 = metadata !{i32 65, i32 1, metadata !55, null}
