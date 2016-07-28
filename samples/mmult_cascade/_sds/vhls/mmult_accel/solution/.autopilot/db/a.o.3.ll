; ModuleID = '/home/trungnguyen/SDSoC/samples/mmult_cascade/_sds/vhls/mmult_accel/solution/.autopilot/db/a.o.3.bc'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@p_str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1 ; [#uses=13 type=[1 x i8]*]
@p_str2 = private unnamed_addr constant [12 x i8] c"hls_label_0\00", align 1 ; [#uses=2 type=[12 x i8]*]
@p_str3 = private unnamed_addr constant [8 x i8] c"ap_fifo\00", align 1 ; [#uses=3 type=[8 x i8]*]
@p_str4 = private unnamed_addr constant [12 x i8] c"hls_label_1\00", align 1 ; [#uses=2 type=[12 x i8]*]
@p_str5 = private unnamed_addr constant [12 x i8] c"hls_label_2\00", align 1 ; [#uses=2 type=[12 x i8]*]
@str = internal constant [12 x i8] c"mmult_accel\00" ; [#uses=1 type=[12 x i8]*]

; [#uses=8]
declare void @llvm.dbg.declare(metadata, metadata) nounwind readnone

; [#uses=3]
define weak void @_ssdm_op_SpecPipeline(...) nounwind {
entry:
  ret void
}

; [#uses=1]
define weak void @_ssdm_op_SpecLatency(...) nounwind {
entry:
  ret void
}

; [#uses=3]
define weak void @_ssdm_op_SpecInterface(...) nounwind {
entry:
  ret void
}

; [#uses=6]
declare void @llvm.dbg.value(metadata, i64, metadata) nounwind readnone

; [#uses=1]
define weak void @_ssdm_op_SpecTopModule(...) {
entry:
  ret void
}

; [#uses=3]
define weak i32 @_ssdm_op_SpecRegionBegin(...) {
entry:
  ret i32 0
}

; [#uses=3]
define weak i32 @_ssdm_op_SpecRegionEnd(...) {
entry:
  ret i32 0
}

; [#uses=3]
define weak void @_ssdm_op_SpecBitsMap(...) {
entry:
  ret void
}

; [#uses=3]
define weak i32 @_ssdm_op_SpecLoopTripCount(...) {
entry:
  ret i32 0
}

; [#uses=0]
define void @mmult_accel(float* %in_A, float* %in_B, float* %out_C) {
  call void (...)* @_ssdm_op_SpecBitsMap(float* %in_A), !map !0
  call void (...)* @_ssdm_op_SpecBitsMap(float* %in_B), !map !6
  call void (...)* @_ssdm_op_SpecBitsMap(float* %out_C), !map !10
  call void (...)* @_ssdm_op_SpecTopModule([12 x i8]* @str) nounwind
  %a_buf_0 = alloca [64 x float], align 4         ; [#uses=5 type=[64 x float]*]
  %a_buf_1 = alloca [64 x float], align 4         ; [#uses=5 type=[64 x float]*]
  %a_buf_2 = alloca [64 x float], align 4         ; [#uses=5 type=[64 x float]*]
  %a_buf_3 = alloca [64 x float], align 4         ; [#uses=5 type=[64 x float]*]
  %b_buf_0 = alloca [64 x float], align 4         ; [#uses=5 type=[64 x float]*]
  %b_buf_1 = alloca [64 x float], align 4         ; [#uses=5 type=[64 x float]*]
  %b_buf_2 = alloca [64 x float], align 4         ; [#uses=5 type=[64 x float]*]
  %b_buf_3 = alloca [64 x float], align 4         ; [#uses=5 type=[64 x float]*]
  call void @llvm.dbg.value(metadata !{float* %in_A}, i64 0, metadata !14), !dbg !26 ; [debug line = 31:25] [debug variable = in_A]
  call void @llvm.dbg.value(metadata !{float* %in_B}, i64 0, metadata !27), !dbg !28 ; [debug line = 32:25] [debug variable = in_B]
  call void @llvm.dbg.value(metadata !{float* %out_C}, i64 0, metadata !29), !dbg !30 ; [debug line = 33:25] [debug variable = out_C]
  call void (...)* @_ssdm_op_SpecLatency(i32 1, i32 65535, [1 x i8]* @p_str) nounwind, !dbg !31 ; [debug line = 36:1]
  call void (...)* @_ssdm_op_SpecInterface(float* %in_A, [8 x i8]* @p_str3, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str)
  call void (...)* @_ssdm_op_SpecInterface(float* %in_B, [8 x i8]* @p_str3, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str)
  call void (...)* @_ssdm_op_SpecInterface(float* %out_C, [8 x i8]* @p_str3, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str)
  call void @llvm.dbg.declare(metadata !{[64 x float]* %a_buf_0}, metadata !33), !dbg !39 ; [debug line = 44:9] [debug variable = a_buf[0]]
  call void @llvm.dbg.declare(metadata !{[64 x float]* %a_buf_1}, metadata !40), !dbg !39 ; [debug line = 44:9] [debug variable = a_buf[1]]
  call void @llvm.dbg.declare(metadata !{[64 x float]* %a_buf_2}, metadata !41), !dbg !39 ; [debug line = 44:9] [debug variable = a_buf[2]]
  call void @llvm.dbg.declare(metadata !{[64 x float]* %a_buf_3}, metadata !42), !dbg !39 ; [debug line = 44:9] [debug variable = a_buf[3]]
  call void @llvm.dbg.declare(metadata !{[64 x float]* %b_buf_0}, metadata !43), !dbg !45 ; [debug line = 45:9] [debug variable = b_buf[0]]
  call void @llvm.dbg.declare(metadata !{[64 x float]* %b_buf_1}, metadata !46), !dbg !45 ; [debug line = 45:9] [debug variable = b_buf[1]]
  call void @llvm.dbg.declare(metadata !{[64 x float]* %b_buf_2}, metadata !47), !dbg !45 ; [debug line = 45:9] [debug variable = b_buf[2]]
  call void @llvm.dbg.declare(metadata !{[64 x float]* %b_buf_3}, metadata !48), !dbg !45 ; [debug line = 45:9] [debug variable = b_buf[3]]
  br label %.preheader5, !dbg !49                 ; [debug line = 48:7]

.preheader5:                                      ; preds = %1, %0
  %indvar_flatten = phi i9 [ 0, %0 ], [ %indvar_flatten_next, %1 ] ; [#uses=2 type=i9]
  %i = phi i5 [ 0, %0 ], [ %i_mid2, %1 ]          ; [#uses=2 type=i5]
  %j = phi i5 [ 0, %0 ], [ %j_2, %1 ]             ; [#uses=2 type=i5]
  %exitcond_flatten = icmp eq i9 %indvar_flatten, -256 ; [#uses=1 type=i1]
  %indvar_flatten_next = add i9 %indvar_flatten, 1 ; [#uses=1 type=i9]
  br i1 %exitcond_flatten, label %.preheader, label %.preheader5.preheader

; <label>:1                                       ; preds = %branch3, %branch2, %branch1, %branch0
  %empty = call i32 (...)* @_ssdm_op_SpecRegionEnd([12 x i8]* @p_str4, i32 %tmp_3) nounwind, !dbg !51 ; [#uses=0 type=i32] [debug line = 52:5]
  %j_2 = add i5 %j_mid2, 1, !dbg !55              ; [#uses=1 type=i5] [debug line = 49:20]
  call void @llvm.dbg.value(metadata !{i5 %j_2}, i64 0, metadata !56), !dbg !55 ; [debug line = 49:20] [debug variable = j]
  br label %.preheader5, !dbg !55                 ; [debug line = 49:20]

.preheader5.preheader:                            ; preds = %.preheader5
  %empty_6 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 256, i64 256, i64 256) ; [#uses=0 type=i32]
  %exitcond = icmp eq i5 %j, -16, !dbg !58        ; [#uses=2 type=i1] [debug line = 49:9]
  %j_mid2 = select i1 %exitcond, i5 0, i5 %j      ; [#uses=3 type=i5]
  %i_s = add i5 %i, 1, !dbg !59                   ; [#uses=1 type=i5] [debug line = 48:18]
  %i_mid2 = select i1 %exitcond, i5 %i_s, i5 %i   ; [#uses=2 type=i5]
  %tmp_3 = call i32 (...)* @_ssdm_op_SpecRegionBegin([12 x i8]* @p_str4) nounwind, !dbg !60 ; [#uses=1 type=i32] [debug line = 49:26]
  call void (...)* @_ssdm_op_SpecPipeline(i32 1, i32 1, i32 1, i32 0, [1 x i8]* @p_str) nounwind, !dbg !61 ; [debug line = 50:1]
  %in_A_read = call float @_ssdm_op_Read.ap_fifo.volatile.floatP(float* %in_A), !dbg !62 ; [#uses=4 type=float] [debug line = 51:2]
  %arrayNo_cast = call i3 @_ssdm_op_PartSelect.i3.i5.i32.i32(i5 %j_mid2, i32 2, i32 4) ; [#uses=1 type=i3]
  %tmp_4 = trunc i5 %j_mid2 to i2                 ; [#uses=1 type=i2]
  %tmp = call i7 @_ssdm_op_BitConcatenate.i7.i5.i2(i5 %i_mid2, i2 %tmp_4) ; [#uses=1 type=i7]
  %tmp_1 = zext i7 %tmp to i64, !dbg !62          ; [#uses=4 type=i64] [debug line = 51:2]
  %a_buf_0_addr = getelementptr [64 x float]* %a_buf_0, i64 0, i64 %tmp_1, !dbg !62 ; [#uses=1 type=float*] [debug line = 51:2]
  %a_buf_1_addr = getelementptr [64 x float]* %a_buf_1, i64 0, i64 %tmp_1, !dbg !62 ; [#uses=1 type=float*] [debug line = 51:2]
  %a_buf_2_addr = getelementptr [64 x float]* %a_buf_2, i64 0, i64 %tmp_1, !dbg !62 ; [#uses=1 type=float*] [debug line = 51:2]
  %a_buf_3_addr = getelementptr [64 x float]* %a_buf_3, i64 0, i64 %tmp_1, !dbg !62 ; [#uses=1 type=float*] [debug line = 51:2]
  switch i3 %arrayNo_cast, label %branch3 [
    i3 0, label %branch0
    i3 1, label %branch1
    i3 2, label %branch2
  ], !dbg !62                                     ; [debug line = 51:2]

.preheader:                                       ; preds = %2, %.preheader5
  %indvar_flatten6 = phi i9 [ %indvar_flatten_next7, %2 ], [ 0, %.preheader5 ] ; [#uses=2 type=i9]
  %i_1 = phi i5 [ %i_1_mid2, %2 ], [ 0, %.preheader5 ] ; [#uses=2 type=i5]
  %j_1 = phi i5 [ %j_3, %2 ], [ 0, %.preheader5 ] ; [#uses=2 type=i5]
  %exitcond_flatten8 = icmp eq i9 %indvar_flatten6, -256 ; [#uses=1 type=i1]
  %indvar_flatten_next7 = add i9 %indvar_flatten6, 1 ; [#uses=1 type=i9]
  br i1 %exitcond_flatten8, label %.preheader.i, label %.preheader4

; <label>:2                                       ; preds = %branch7, %branch6, %branch5, %branch4
  %empty_7 = call i32 (...)* @_ssdm_op_SpecRegionEnd([12 x i8]* @p_str5, i32 %tmp_7) nounwind, !dbg !63 ; [#uses=0 type=i32] [debug line = 60:5]
  %j_3 = add i5 %j_1_mid2, 1, !dbg !68            ; [#uses=1 type=i5] [debug line = 57:20]
  call void @llvm.dbg.value(metadata !{i5 %j_3}, i64 0, metadata !56), !dbg !68 ; [debug line = 57:20] [debug variable = j]
  br label %.preheader, !dbg !68                  ; [debug line = 57:20]

.preheader4:                                      ; preds = %.preheader
  %empty_8 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 256, i64 256, i64 256) ; [#uses=0 type=i32]
  %exitcond1 = icmp eq i5 %j_1, -16, !dbg !69     ; [#uses=2 type=i1] [debug line = 57:9]
  %j_1_mid2 = select i1 %exitcond1, i5 0, i5 %j_1 ; [#uses=2 type=i5]
  %i_2 = add i5 %i_1, 1, !dbg !70                 ; [#uses=1 type=i5] [debug line = 56:18]
  %i_1_mid2 = select i1 %exitcond1, i5 %i_2, i5 %i_1 ; [#uses=3 type=i5]
  %arrayNo1_cast = call i3 @_ssdm_op_PartSelect.i3.i5.i32.i32(i5 %i_1_mid2, i32 2, i32 4) ; [#uses=1 type=i3]
  %tmp_7 = call i32 (...)* @_ssdm_op_SpecRegionBegin([12 x i8]* @p_str5) nounwind, !dbg !71 ; [#uses=1 type=i32] [debug line = 57:26]
  call void (...)* @_ssdm_op_SpecPipeline(i32 1, i32 1, i32 1, i32 0, [1 x i8]* @p_str) nounwind, !dbg !72 ; [debug line = 58:1]
  %in_B_read = call float @_ssdm_op_Read.ap_fifo.volatile.floatP(float* %in_B), !dbg !73 ; [#uses=4 type=float] [debug line = 59:2]
  %tmp_trn_cast = zext i5 %j_1_mid2 to i7         ; [#uses=1 type=i7]
  %tmp_20 = trunc i5 %i_1_mid2 to i2              ; [#uses=1 type=i2]
  %tmp_5 = call i6 @_ssdm_op_BitConcatenate.i6.i2.i4(i2 %tmp_20, i4 0) ; [#uses=1 type=i6]
  %p_addr_cast = zext i6 %tmp_5 to i7, !dbg !73   ; [#uses=1 type=i7] [debug line = 59:2]
  %p_addr1 = add i7 %p_addr_cast, %tmp_trn_cast, !dbg !73 ; [#uses=1 type=i7] [debug line = 59:2]
  %tmp_6 = zext i7 %p_addr1 to i64, !dbg !73      ; [#uses=4 type=i64] [debug line = 59:2]
  %b_buf_0_addr = getelementptr [64 x float]* %b_buf_0, i64 0, i64 %tmp_6, !dbg !73 ; [#uses=1 type=float*] [debug line = 59:2]
  %b_buf_1_addr = getelementptr [64 x float]* %b_buf_1, i64 0, i64 %tmp_6, !dbg !73 ; [#uses=1 type=float*] [debug line = 59:2]
  %b_buf_2_addr = getelementptr [64 x float]* %b_buf_2, i64 0, i64 %tmp_6, !dbg !73 ; [#uses=1 type=float*] [debug line = 59:2]
  %b_buf_3_addr = getelementptr [64 x float]* %b_buf_3, i64 0, i64 %tmp_6, !dbg !73 ; [#uses=1 type=float*] [debug line = 59:2]
  switch i3 %arrayNo1_cast, label %branch7 [
    i3 0, label %branch4
    i3 1, label %branch5
    i3 2, label %branch6
  ], !dbg !73                                     ; [debug line = 59:2]

.preheader.i:                                     ; preds = %.preheader179, %.preheader
  %indvar_flatten1 = phi i9 [ %indvar_flatten_next1, %.preheader179 ], [ 0, %.preheader ] ; [#uses=2 type=i9]
  %index_a_0_i = phi i5 [ %index_a_0_i_mid2, %.preheader179 ], [ 0, %.preheader ] ; [#uses=2 type=i5]
  %index_b_0_i = phi i5 [ %index_b, %.preheader179 ], [ 0, %.preheader ] ; [#uses=2 type=i5]
  %exitcond_flatten1 = icmp eq i9 %indvar_flatten1, -256 ; [#uses=1 type=i1]
  %indvar_flatten_next1 = add i9 %indvar_flatten1, 1 ; [#uses=1 type=i9]
  br i1 %exitcond_flatten1, label %mmult_kernel.exit, label %.preheader179

.preheader179:                                    ; preds = %.preheader.i
  %empty_9 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 256, i64 256, i64 256) ; [#uses=0 type=i32]
  %exitcond1_i = icmp eq i5 %index_b_0_i, -16, !dbg !74 ; [#uses=2 type=i1] [debug line = 17:10@64:3]
  %index_b_0_i_mid2 = select i1 %exitcond1_i, i5 0, i5 %index_b_0_i ; [#uses=5 type=i5]
  %index_a = add i5 %index_a_0_i, 1, !dbg !86     ; [#uses=1 type=i5] [debug line = 16:35@64:3]
  %index_a_0_i_mid2 = select i1 %exitcond1_i, i5 %index_a, i5 %index_a_0_i ; [#uses=2 type=i5]
  %tmp_8 = call i7 @_ssdm_op_BitConcatenate.i7.i5.i2(i5 %index_a_0_i_mid2, i2 0) ; [#uses=4 type=i7]
  %tmp_9 = zext i7 %tmp_8 to i64                  ; [#uses=4 type=i64]
  %a_buf_0_addr_1 = getelementptr [64 x float]* %a_buf_0, i64 0, i64 %tmp_9 ; [#uses=1 type=float*]
  %a_buf_0_load = load float* %a_buf_0_addr_1, align 16, !dbg !87 ; [#uses=1 type=float] [debug line = 23:77@64:3]
  %tmp_s = or i7 %tmp_8, 1                        ; [#uses=1 type=i7]
  %p_addr2 = call i32 @_ssdm_op_BitConcatenate.i32.i25.i7(i25 0, i7 %tmp_s) ; [#uses=1 type=i32]
  %tmp_10 = zext i32 %p_addr2 to i64              ; [#uses=4 type=i64]
  %a_buf_0_addr_2 = getelementptr [64 x float]* %a_buf_0, i64 0, i64 %tmp_10 ; [#uses=1 type=float*]
  %a_buf_0_load_1 = load float* %a_buf_0_addr_2, align 4, !dbg !87 ; [#uses=1 type=float] [debug line = 23:77@64:3]
  %tmp_11 = or i7 %tmp_8, 2                       ; [#uses=1 type=i7]
  %p_addr3 = call i32 @_ssdm_op_BitConcatenate.i32.i25.i7(i25 0, i7 %tmp_11) ; [#uses=1 type=i32]
  %tmp_12 = zext i32 %p_addr3 to i64              ; [#uses=4 type=i64]
  %a_buf_0_addr_3 = getelementptr [64 x float]* %a_buf_0, i64 0, i64 %tmp_12 ; [#uses=1 type=float*]
  %a_buf_0_load_2 = load float* %a_buf_0_addr_3, align 8, !dbg !87 ; [#uses=1 type=float] [debug line = 23:77@64:3]
  %tmp_13 = or i7 %tmp_8, 3                       ; [#uses=1 type=i7]
  %p_addr4 = call i32 @_ssdm_op_BitConcatenate.i32.i25.i7(i25 0, i7 %tmp_13) ; [#uses=1 type=i32]
  %tmp_14 = zext i32 %p_addr4 to i64              ; [#uses=4 type=i64]
  %a_buf_0_addr_4 = getelementptr [64 x float]* %a_buf_0, i64 0, i64 %tmp_14 ; [#uses=1 type=float*]
  %a_buf_0_load_3 = load float* %a_buf_0_addr_4, align 4, !dbg !87 ; [#uses=1 type=float] [debug line = 23:77@64:3]
  %a_buf_1_addr_1 = getelementptr [64 x float]* %a_buf_1, i64 0, i64 %tmp_9 ; [#uses=1 type=float*]
  %a_buf_1_load = load float* %a_buf_1_addr_1, align 16, !dbg !87 ; [#uses=1 type=float] [debug line = 23:77@64:3]
  %a_buf_1_addr_2 = getelementptr [64 x float]* %a_buf_1, i64 0, i64 %tmp_10 ; [#uses=1 type=float*]
  %a_buf_1_load_1 = load float* %a_buf_1_addr_2, align 4, !dbg !87 ; [#uses=1 type=float] [debug line = 23:77@64:3]
  %a_buf_1_addr_3 = getelementptr [64 x float]* %a_buf_1, i64 0, i64 %tmp_12 ; [#uses=1 type=float*]
  %a_buf_1_load_2 = load float* %a_buf_1_addr_3, align 8, !dbg !87 ; [#uses=1 type=float] [debug line = 23:77@64:3]
  %a_buf_1_addr_4 = getelementptr [64 x float]* %a_buf_1, i64 0, i64 %tmp_14 ; [#uses=1 type=float*]
  %a_buf_1_load_3 = load float* %a_buf_1_addr_4, align 4, !dbg !87 ; [#uses=1 type=float] [debug line = 23:77@64:3]
  %a_buf_2_addr_1 = getelementptr [64 x float]* %a_buf_2, i64 0, i64 %tmp_9 ; [#uses=1 type=float*]
  %a_buf_2_load = load float* %a_buf_2_addr_1, align 16, !dbg !87 ; [#uses=1 type=float] [debug line = 23:77@64:3]
  %a_buf_2_addr_2 = getelementptr [64 x float]* %a_buf_2, i64 0, i64 %tmp_10 ; [#uses=1 type=float*]
  %a_buf_2_load_1 = load float* %a_buf_2_addr_2, align 4, !dbg !87 ; [#uses=1 type=float] [debug line = 23:77@64:3]
  %a_buf_2_addr_3 = getelementptr [64 x float]* %a_buf_2, i64 0, i64 %tmp_12 ; [#uses=1 type=float*]
  %a_buf_2_load_2 = load float* %a_buf_2_addr_3, align 8, !dbg !87 ; [#uses=1 type=float] [debug line = 23:77@64:3]
  %a_buf_2_addr_4 = getelementptr [64 x float]* %a_buf_2, i64 0, i64 %tmp_14 ; [#uses=1 type=float*]
  %a_buf_2_load_3 = load float* %a_buf_2_addr_4, align 4, !dbg !87 ; [#uses=1 type=float] [debug line = 23:77@64:3]
  %a_buf_3_addr_1 = getelementptr [64 x float]* %a_buf_3, i64 0, i64 %tmp_9 ; [#uses=1 type=float*]
  %a_buf_3_load = load float* %a_buf_3_addr_1, align 16, !dbg !87 ; [#uses=1 type=float] [debug line = 23:77@64:3]
  %a_buf_3_addr_2 = getelementptr [64 x float]* %a_buf_3, i64 0, i64 %tmp_10 ; [#uses=1 type=float*]
  %a_buf_3_load_1 = load float* %a_buf_3_addr_2, align 4, !dbg !87 ; [#uses=1 type=float] [debug line = 23:77@64:3]
  %a_buf_3_addr_3 = getelementptr [64 x float]* %a_buf_3, i64 0, i64 %tmp_12 ; [#uses=1 type=float*]
  %a_buf_3_load_2 = load float* %a_buf_3_addr_3, align 8, !dbg !87 ; [#uses=1 type=float] [debug line = 23:77@64:3]
  %a_buf_3_addr_4 = getelementptr [64 x float]* %a_buf_3, i64 0, i64 %tmp_14 ; [#uses=1 type=float*]
  %a_buf_3_load_3 = load float* %a_buf_3_addr_4, align 4, !dbg !87 ; [#uses=1 type=float] [debug line = 23:77@64:3]
  %tmp_2 = call i32 (...)* @_ssdm_op_SpecRegionBegin([12 x i8]* @p_str2) nounwind, !dbg !91 ; [#uses=1 type=i32] [debug line = 17:49@64:3]
  call void (...)* @_ssdm_op_SpecPipeline(i32 1, i32 1, i32 1, i32 0, [1 x i8]* @p_str) nounwind, !dbg !92 ; [debug line = 18:1@64:3]
  %tmp_4_trn_cast1 = zext i5 %index_b_0_i_mid2 to i7 ; [#uses=1 type=i7]
  %tmp_4_trn_cast = zext i5 %index_b_0_i_mid2 to i6 ; [#uses=1 type=i6]
  %tmp_15 = zext i5 %index_b_0_i_mid2 to i64      ; [#uses=4 type=i64]
  %b_buf_0_addr_1 = getelementptr [64 x float]* %b_buf_0, i64 0, i64 %tmp_15 ; [#uses=1 type=float*]
  %b_buf_0_load = load float* %b_buf_0_addr_1, align 4, !dbg !87 ; [#uses=1 type=float] [debug line = 23:77@64:3]
  %product_term = fmul float %a_buf_0_load, %b_buf_0_load, !dbg !87 ; [#uses=1 type=float] [debug line = 23:77@64:3]
  %result = fadd float %product_term, 0.000000e+00, !dbg !93 ; [#uses=1 type=float] [debug line = 24:9@64:3]
  %p_addr5 = add i6 %tmp_4_trn_cast, 16           ; [#uses=1 type=i6]
  %tmp_16 = zext i6 %p_addr5 to i64               ; [#uses=4 type=i64]
  %b_buf_0_addr_2 = getelementptr [64 x float]* %b_buf_0, i64 0, i64 %tmp_16 ; [#uses=1 type=float*]
  %b_buf_0_load_1 = load float* %b_buf_0_addr_2, align 4, !dbg !87 ; [#uses=1 type=float] [debug line = 23:77@64:3]
  %product_term_1 = fmul float %a_buf_0_load_1, %b_buf_0_load_1, !dbg !87 ; [#uses=1 type=float] [debug line = 23:77@64:3]
  %result_1 = fadd float %result, %product_term_1, !dbg !93 ; [#uses=1 type=float] [debug line = 24:9@64:3]
  %p_addr6 = call i32 @_ssdm_op_BitConcatenate.i32.i27.i5(i27 1, i5 %index_b_0_i_mid2) ; [#uses=1 type=i32]
  %tmp_17 = zext i32 %p_addr6 to i64              ; [#uses=4 type=i64]
  %b_buf_0_addr_3 = getelementptr [64 x float]* %b_buf_0, i64 0, i64 %tmp_17 ; [#uses=1 type=float*]
  %b_buf_0_load_2 = load float* %b_buf_0_addr_3, align 4, !dbg !87 ; [#uses=1 type=float] [debug line = 23:77@64:3]
  %product_term_2 = fmul float %a_buf_0_load_2, %b_buf_0_load_2, !dbg !87 ; [#uses=1 type=float] [debug line = 23:77@64:3]
  %result_2 = fadd float %result_1, %product_term_2, !dbg !93 ; [#uses=1 type=float] [debug line = 24:9@64:3]
  %p_addr7 = add i7 %tmp_4_trn_cast1, 48          ; [#uses=1 type=i7]
  %tmp_18 = zext i7 %p_addr7 to i64               ; [#uses=4 type=i64]
  %b_buf_0_addr_4 = getelementptr [64 x float]* %b_buf_0, i64 0, i64 %tmp_18 ; [#uses=1 type=float*]
  %b_buf_0_load_3 = load float* %b_buf_0_addr_4, align 4, !dbg !87 ; [#uses=1 type=float] [debug line = 23:77@64:3]
  %product_term_3 = fmul float %a_buf_0_load_3, %b_buf_0_load_3, !dbg !87 ; [#uses=1 type=float] [debug line = 23:77@64:3]
  %result_3 = fadd float %result_2, %product_term_3, !dbg !93 ; [#uses=1 type=float] [debug line = 24:9@64:3]
  %b_buf_1_addr_1 = getelementptr [64 x float]* %b_buf_1, i64 0, i64 %tmp_15 ; [#uses=1 type=float*]
  %b_buf_1_load = load float* %b_buf_1_addr_1, align 4, !dbg !87 ; [#uses=1 type=float] [debug line = 23:77@64:3]
  %product_term_4 = fmul float %a_buf_1_load, %b_buf_1_load, !dbg !87 ; [#uses=1 type=float] [debug line = 23:77@64:3]
  %result_4 = fadd float %result_3, %product_term_4, !dbg !93 ; [#uses=1 type=float] [debug line = 24:9@64:3]
  %b_buf_1_addr_2 = getelementptr [64 x float]* %b_buf_1, i64 0, i64 %tmp_16 ; [#uses=1 type=float*]
  %b_buf_1_load_1 = load float* %b_buf_1_addr_2, align 4, !dbg !87 ; [#uses=1 type=float] [debug line = 23:77@64:3]
  %product_term_5 = fmul float %a_buf_1_load_1, %b_buf_1_load_1, !dbg !87 ; [#uses=1 type=float] [debug line = 23:77@64:3]
  %result_5 = fadd float %result_4, %product_term_5, !dbg !93 ; [#uses=1 type=float] [debug line = 24:9@64:3]
  %b_buf_1_addr_3 = getelementptr [64 x float]* %b_buf_1, i64 0, i64 %tmp_17 ; [#uses=1 type=float*]
  %b_buf_1_load_2 = load float* %b_buf_1_addr_3, align 4, !dbg !87 ; [#uses=1 type=float] [debug line = 23:77@64:3]
  %product_term_6 = fmul float %a_buf_1_load_2, %b_buf_1_load_2, !dbg !87 ; [#uses=1 type=float] [debug line = 23:77@64:3]
  %result_6 = fadd float %result_5, %product_term_6, !dbg !93 ; [#uses=1 type=float] [debug line = 24:9@64:3]
  %b_buf_1_addr_4 = getelementptr [64 x float]* %b_buf_1, i64 0, i64 %tmp_18 ; [#uses=1 type=float*]
  %b_buf_1_load_3 = load float* %b_buf_1_addr_4, align 4, !dbg !87 ; [#uses=1 type=float] [debug line = 23:77@64:3]
  %product_term_7 = fmul float %a_buf_1_load_3, %b_buf_1_load_3, !dbg !87 ; [#uses=1 type=float] [debug line = 23:77@64:3]
  %result_7 = fadd float %result_6, %product_term_7, !dbg !93 ; [#uses=1 type=float] [debug line = 24:9@64:3]
  %b_buf_2_addr_1 = getelementptr [64 x float]* %b_buf_2, i64 0, i64 %tmp_15 ; [#uses=1 type=float*]
  %b_buf_2_load = load float* %b_buf_2_addr_1, align 4, !dbg !87 ; [#uses=1 type=float] [debug line = 23:77@64:3]
  %product_term_8 = fmul float %a_buf_2_load, %b_buf_2_load, !dbg !87 ; [#uses=1 type=float] [debug line = 23:77@64:3]
  %result_8 = fadd float %result_7, %product_term_8, !dbg !93 ; [#uses=1 type=float] [debug line = 24:9@64:3]
  %b_buf_2_addr_2 = getelementptr [64 x float]* %b_buf_2, i64 0, i64 %tmp_16 ; [#uses=1 type=float*]
  %b_buf_2_load_1 = load float* %b_buf_2_addr_2, align 4, !dbg !87 ; [#uses=1 type=float] [debug line = 23:77@64:3]
  %product_term_9 = fmul float %a_buf_2_load_1, %b_buf_2_load_1, !dbg !87 ; [#uses=1 type=float] [debug line = 23:77@64:3]
  %result_9 = fadd float %result_8, %product_term_9, !dbg !93 ; [#uses=1 type=float] [debug line = 24:9@64:3]
  %b_buf_2_addr_3 = getelementptr [64 x float]* %b_buf_2, i64 0, i64 %tmp_17 ; [#uses=1 type=float*]
  %b_buf_2_load_2 = load float* %b_buf_2_addr_3, align 4, !dbg !87 ; [#uses=1 type=float] [debug line = 23:77@64:3]
  %product_term_s = fmul float %a_buf_2_load_2, %b_buf_2_load_2, !dbg !87 ; [#uses=1 type=float] [debug line = 23:77@64:3]
  %result_s = fadd float %result_9, %product_term_s, !dbg !93 ; [#uses=1 type=float] [debug line = 24:9@64:3]
  %b_buf_2_addr_4 = getelementptr [64 x float]* %b_buf_2, i64 0, i64 %tmp_18 ; [#uses=1 type=float*]
  %b_buf_2_load_3 = load float* %b_buf_2_addr_4, align 4, !dbg !87 ; [#uses=1 type=float] [debug line = 23:77@64:3]
  %product_term_10 = fmul float %a_buf_2_load_3, %b_buf_2_load_3, !dbg !87 ; [#uses=1 type=float] [debug line = 23:77@64:3]
  %result_10 = fadd float %result_s, %product_term_10, !dbg !93 ; [#uses=1 type=float] [debug line = 24:9@64:3]
  %b_buf_3_addr_1 = getelementptr [64 x float]* %b_buf_3, i64 0, i64 %tmp_15 ; [#uses=1 type=float*]
  %b_buf_3_load = load float* %b_buf_3_addr_1, align 4, !dbg !87 ; [#uses=1 type=float] [debug line = 23:77@64:3]
  %product_term_11 = fmul float %a_buf_3_load, %b_buf_3_load, !dbg !87 ; [#uses=1 type=float] [debug line = 23:77@64:3]
  %result_11 = fadd float %result_10, %product_term_11, !dbg !93 ; [#uses=1 type=float] [debug line = 24:9@64:3]
  %b_buf_3_addr_2 = getelementptr [64 x float]* %b_buf_3, i64 0, i64 %tmp_16 ; [#uses=1 type=float*]
  %b_buf_3_load_1 = load float* %b_buf_3_addr_2, align 4, !dbg !87 ; [#uses=1 type=float] [debug line = 23:77@64:3]
  %product_term_12 = fmul float %a_buf_3_load_1, %b_buf_3_load_1, !dbg !87 ; [#uses=1 type=float] [debug line = 23:77@64:3]
  %result_12 = fadd float %result_11, %product_term_12, !dbg !93 ; [#uses=1 type=float] [debug line = 24:9@64:3]
  %b_buf_3_addr_3 = getelementptr [64 x float]* %b_buf_3, i64 0, i64 %tmp_17 ; [#uses=1 type=float*]
  %b_buf_3_load_2 = load float* %b_buf_3_addr_3, align 4, !dbg !87 ; [#uses=1 type=float] [debug line = 23:77@64:3]
  %product_term_13 = fmul float %a_buf_3_load_2, %b_buf_3_load_2, !dbg !87 ; [#uses=1 type=float] [debug line = 23:77@64:3]
  %result_13 = fadd float %result_12, %product_term_13, !dbg !93 ; [#uses=1 type=float] [debug line = 24:9@64:3]
  %b_buf_3_addr_4 = getelementptr [64 x float]* %b_buf_3, i64 0, i64 %tmp_18 ; [#uses=1 type=float*]
  %b_buf_3_load_3 = load float* %b_buf_3_addr_4, align 4, !dbg !87 ; [#uses=1 type=float] [debug line = 23:77@64:3]
  %product_term_14 = fmul float %a_buf_3_load_3, %b_buf_3_load_3, !dbg !87 ; [#uses=1 type=float] [debug line = 23:77@64:3]
  %result_14 = fadd float %result_13, %product_term_14, !dbg !93 ; [#uses=1 type=float] [debug line = 24:9@64:3]
  call void @_ssdm_op_Write.ap_fifo.volatile.floatP(float* %out_C, float %result_14), !dbg !94 ; [debug line = 26:7@64:3]
  %empty_10 = call i32 (...)* @_ssdm_op_SpecRegionEnd([12 x i8]* @p_str2, i32 %tmp_2) nounwind, !dbg !95 ; [#uses=0 type=i32] [debug line = 27:5@64:3]
  %index_b = add i5 %index_b_0_i_mid2, 1, !dbg !96 ; [#uses=1 type=i5] [debug line = 17:37@64:3]
  call void @llvm.dbg.value(metadata !{i5 %index_b}, i64 0, metadata !97) nounwind, !dbg !96 ; [debug line = 17:37@64:3] [debug variable = index_b]
  br label %.preheader.i, !dbg !96                ; [debug line = 17:37@64:3]

mmult_kernel.exit:                                ; preds = %.preheader.i
  ret void, !dbg !98                              ; [debug line = 65:1]

branch0:                                          ; preds = %.preheader5.preheader
  store float %in_A_read, float* %a_buf_0_addr, align 4, !dbg !62 ; [debug line = 51:2]
  br label %1, !dbg !62                           ; [debug line = 51:2]

branch1:                                          ; preds = %.preheader5.preheader
  store float %in_A_read, float* %a_buf_1_addr, align 4, !dbg !62 ; [debug line = 51:2]
  br label %1, !dbg !62                           ; [debug line = 51:2]

branch2:                                          ; preds = %.preheader5.preheader
  store float %in_A_read, float* %a_buf_2_addr, align 4, !dbg !62 ; [debug line = 51:2]
  br label %1, !dbg !62                           ; [debug line = 51:2]

branch3:                                          ; preds = %.preheader5.preheader
  store float %in_A_read, float* %a_buf_3_addr, align 4, !dbg !62 ; [debug line = 51:2]
  br label %1, !dbg !62                           ; [debug line = 51:2]

branch4:                                          ; preds = %.preheader4
  store float %in_B_read, float* %b_buf_0_addr, align 4, !dbg !73 ; [debug line = 59:2]
  br label %2, !dbg !73                           ; [debug line = 59:2]

branch5:                                          ; preds = %.preheader4
  store float %in_B_read, float* %b_buf_1_addr, align 4, !dbg !73 ; [debug line = 59:2]
  br label %2, !dbg !73                           ; [debug line = 59:2]

branch6:                                          ; preds = %.preheader4
  store float %in_B_read, float* %b_buf_2_addr, align 4, !dbg !73 ; [debug line = 59:2]
  br label %2, !dbg !73                           ; [debug line = 59:2]

branch7:                                          ; preds = %.preheader4
  store float %in_B_read, float* %b_buf_3_addr, align 4, !dbg !73 ; [debug line = 59:2]
  br label %2, !dbg !73                           ; [debug line = 59:2]
}

; [#uses=2]
define weak i3 @_ssdm_op_PartSelect.i3.i5.i32.i32(i5, i32, i32) nounwind readnone {
entry:
  %empty = call i5 @llvm.part.select.i5(i5 %0, i32 %1, i32 %2) ; [#uses=1 type=i5]
  %empty_11 = trunc i5 %empty to i3               ; [#uses=1 type=i3]
  ret i3 %empty_11
}

; [#uses=2]
define weak i7 @_ssdm_op_BitConcatenate.i7.i5.i2(i5, i2) nounwind readnone {
entry:
  %empty = zext i5 %0 to i7                       ; [#uses=1 type=i7]
  %empty_12 = zext i2 %1 to i7                    ; [#uses=1 type=i7]
  %empty_13 = shl i7 %empty, 2                    ; [#uses=1 type=i7]
  %empty_14 = or i7 %empty_13, %empty_12          ; [#uses=1 type=i7]
  ret i7 %empty_14
}

; [#uses=1]
define weak i6 @_ssdm_op_BitConcatenate.i6.i2.i4(i2, i4) nounwind readnone {
entry:
  %empty = zext i2 %0 to i6                       ; [#uses=1 type=i6]
  %empty_15 = zext i4 %1 to i6                    ; [#uses=1 type=i6]
  %empty_16 = shl i6 %empty, 4                    ; [#uses=1 type=i6]
  %empty_17 = or i6 %empty_16, %empty_15          ; [#uses=1 type=i6]
  ret i6 %empty_17
}

; [#uses=1]
define weak i32 @_ssdm_op_BitConcatenate.i32.i27.i5(i27, i5) nounwind readnone {
entry:
  %empty = zext i27 %0 to i32                     ; [#uses=1 type=i32]
  %empty_18 = zext i5 %1 to i32                   ; [#uses=1 type=i32]
  %empty_19 = shl i32 %empty, 5                   ; [#uses=1 type=i32]
  %empty_20 = or i32 %empty_19, %empty_18         ; [#uses=1 type=i32]
  ret i32 %empty_20
}

; [#uses=3]
define weak i32 @_ssdm_op_BitConcatenate.i32.i25.i7(i25, i7) nounwind readnone {
entry:
  %empty = zext i25 %0 to i32                     ; [#uses=1 type=i32]
  %empty_21 = zext i7 %1 to i32                   ; [#uses=1 type=i32]
  %empty_22 = shl i32 %empty, 7                   ; [#uses=1 type=i32]
  %empty_23 = or i32 %empty_22, %empty_21         ; [#uses=1 type=i32]
  ret i32 %empty_23
}

; [#uses=2]
define weak float @_ssdm_op_Read.ap_fifo.volatile.floatP(float*) {
entry:
  %empty = call float @_autotb_FifoRead_float(float* %0) ; [#uses=1 type=float]
  ret float %empty
}

; [#uses=1]
define weak void @_ssdm_op_Write.ap_fifo.volatile.floatP(float*, float) {
entry:
  %empty = call float @_autotb_FifoWrite_float(float* %0, float %1) ; [#uses=0 type=float]
  ret void
}

; [#uses=1]
declare float @_autotb_FifoRead_float(float*)

; [#uses=1]
declare float @_autotb_FifoWrite_float(float*, float)

; [#uses=1]
declare i5 @llvm.part.select.i5(i5, i32, i32) nounwind readnone

; [#uses=0]
declare i2 @_ssdm_op_PartSelect.i2.i5.i32.i32(i5, i32, i32) nounwind readnone

!llvm.map.gv = !{}

!0 = metadata !{metadata !1}
!1 = metadata !{i32 0, i32 31, metadata !2}
!2 = metadata !{metadata !3}
!3 = metadata !{metadata !"in_A", metadata !4, metadata !"float", i32 0, i32 31}
!4 = metadata !{metadata !5}
!5 = metadata !{i32 0, i32 255, i32 1}
!6 = metadata !{metadata !7}
!7 = metadata !{i32 0, i32 31, metadata !8}
!8 = metadata !{metadata !9}
!9 = metadata !{metadata !"in_B", metadata !4, metadata !"float", i32 0, i32 31}
!10 = metadata !{metadata !11}
!11 = metadata !{i32 0, i32 31, metadata !12}
!12 = metadata !{metadata !13}
!13 = metadata !{metadata !"out_C", metadata !4, metadata !"float", i32 0, i32 31}
!14 = metadata !{i32 786689, metadata !15, metadata !"in_A", null, i32 31, metadata !23, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!15 = metadata !{i32 786478, i32 0, metadata !16, metadata !"mmult_accel", metadata !"mmult_accel", metadata !"_Z11mmult_accelPfS_S_", metadata !16, i32 31, metadata !17, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, null, metadata !21, i32 34} ; [ DW_TAG_subprogram ]
!16 = metadata !{i32 786473, metadata !"/home/trungnguyen/SDSoC/samples/mmult_cascade/_sds/vhls/src/mmult_accel.cpp", metadata !"/home/trungnguyen/SDSoC/samples/mmult_cascade/_sds/vhls", null} ; [ DW_TAG_file_type ]
!17 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !18, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!18 = metadata !{null, metadata !19, metadata !19, metadata !19}
!19 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !20} ; [ DW_TAG_pointer_type ]
!20 = metadata !{i32 786468, null, metadata !"float", null, i32 0, i64 32, i64 32, i64 0, i32 0, i32 4} ; [ DW_TAG_base_type ]
!21 = metadata !{metadata !22}
!22 = metadata !{i32 786468}                      ; [ DW_TAG_base_type ]
!23 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 8192, i64 32, i32 0, i32 0, metadata !20, metadata !24, i32 0, i32 0} ; [ DW_TAG_array_type ]
!24 = metadata !{metadata !25}
!25 = metadata !{i32 786465, i64 0, i64 255}      ; [ DW_TAG_subrange_type ]
!26 = metadata !{i32 31, i32 25, metadata !15, null}
!27 = metadata !{i32 786689, metadata !15, metadata !"in_B", null, i32 32, metadata !23, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!28 = metadata !{i32 32, i32 25, metadata !15, null}
!29 = metadata !{i32 786689, metadata !15, metadata !"out_C", null, i32 33, metadata !23, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!30 = metadata !{i32 33, i32 25, metadata !15, null}
!31 = metadata !{i32 36, i32 1, metadata !32, null}
!32 = metadata !{i32 786443, metadata !15, i32 34, i32 1, metadata !16, i32 7} ; [ DW_TAG_lexical_block ]
!33 = metadata !{i32 790529, metadata !34, metadata !"a_buf[0]", null, i32 44, metadata !38, i32 0, i32 0} ; [ DW_TAG_auto_variable_field ]
!34 = metadata !{i32 786688, metadata !32, metadata !"a_buf", metadata !16, i32 44, metadata !35, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!35 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 8192, i64 32, i32 0, i32 0, metadata !20, metadata !36, i32 0, i32 0} ; [ DW_TAG_array_type ]
!36 = metadata !{metadata !37, metadata !37}
!37 = metadata !{i32 786465, i64 0, i64 15}       ; [ DW_TAG_subrange_type ]
!38 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 2048, i64 32, i32 0, i32 0, metadata !20, metadata !36, i32 0, i32 0} ; [ DW_TAG_array_type ]
!39 = metadata !{i32 44, i32 9, metadata !32, null}
!40 = metadata !{i32 790529, metadata !34, metadata !"a_buf[1]", null, i32 44, metadata !38, i32 0, i32 0} ; [ DW_TAG_auto_variable_field ]
!41 = metadata !{i32 790529, metadata !34, metadata !"a_buf[2]", null, i32 44, metadata !38, i32 0, i32 0} ; [ DW_TAG_auto_variable_field ]
!42 = metadata !{i32 790529, metadata !34, metadata !"a_buf[3]", null, i32 44, metadata !38, i32 0, i32 0} ; [ DW_TAG_auto_variable_field ]
!43 = metadata !{i32 790529, metadata !44, metadata !"b_buf[0]", null, i32 45, metadata !38, i32 0, i32 0} ; [ DW_TAG_auto_variable_field ]
!44 = metadata !{i32 786688, metadata !32, metadata !"b_buf", metadata !16, i32 45, metadata !35, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!45 = metadata !{i32 45, i32 9, metadata !32, null}
!46 = metadata !{i32 790529, metadata !44, metadata !"b_buf[1]", null, i32 45, metadata !38, i32 0, i32 0} ; [ DW_TAG_auto_variable_field ]
!47 = metadata !{i32 790529, metadata !44, metadata !"b_buf[2]", null, i32 45, metadata !38, i32 0, i32 0} ; [ DW_TAG_auto_variable_field ]
!48 = metadata !{i32 790529, metadata !44, metadata !"b_buf[3]", null, i32 45, metadata !38, i32 0, i32 0} ; [ DW_TAG_auto_variable_field ]
!49 = metadata !{i32 48, i32 7, metadata !50, null}
!50 = metadata !{i32 786443, metadata !32, i32 48, i32 3, metadata !16, i32 8} ; [ DW_TAG_lexical_block ]
!51 = metadata !{i32 52, i32 5, metadata !52, null}
!52 = metadata !{i32 786443, metadata !53, i32 49, i32 25, metadata !16, i32 11} ; [ DW_TAG_lexical_block ]
!53 = metadata !{i32 786443, metadata !54, i32 49, i32 5, metadata !16, i32 10} ; [ DW_TAG_lexical_block ]
!54 = metadata !{i32 786443, metadata !50, i32 48, i32 23, metadata !16, i32 9} ; [ DW_TAG_lexical_block ]
!55 = metadata !{i32 49, i32 20, metadata !53, null}
!56 = metadata !{i32 786688, metadata !32, metadata !"j", metadata !16, i32 43, metadata !57, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!57 = metadata !{i32 786468, null, metadata !"int", null, i32 0, i64 32, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ]
!58 = metadata !{i32 49, i32 9, metadata !53, null}
!59 = metadata !{i32 48, i32 18, metadata !50, null}
!60 = metadata !{i32 49, i32 26, metadata !52, null}
!61 = metadata !{i32 50, i32 1, metadata !52, null}
!62 = metadata !{i32 51, i32 2, metadata !52, null}
!63 = metadata !{i32 60, i32 5, metadata !64, null}
!64 = metadata !{i32 786443, metadata !65, i32 57, i32 25, metadata !16, i32 15} ; [ DW_TAG_lexical_block ]
!65 = metadata !{i32 786443, metadata !66, i32 57, i32 5, metadata !16, i32 14} ; [ DW_TAG_lexical_block ]
!66 = metadata !{i32 786443, metadata !67, i32 56, i32 23, metadata !16, i32 13} ; [ DW_TAG_lexical_block ]
!67 = metadata !{i32 786443, metadata !32, i32 56, i32 3, metadata !16, i32 12} ; [ DW_TAG_lexical_block ]
!68 = metadata !{i32 57, i32 20, metadata !65, null}
!69 = metadata !{i32 57, i32 9, metadata !65, null}
!70 = metadata !{i32 56, i32 18, metadata !67, null}
!71 = metadata !{i32 57, i32 26, metadata !64, null}
!72 = metadata !{i32 58, i32 1, metadata !64, null}
!73 = metadata !{i32 59, i32 2, metadata !64, null}
!74 = metadata !{i32 17, i32 10, metadata !75, metadata !85}
!75 = metadata !{i32 786443, metadata !76, i32 17, i32 5, metadata !16, i32 3} ; [ DW_TAG_lexical_block ]
!76 = metadata !{i32 786443, metadata !77, i32 16, i32 46, metadata !16, i32 2} ; [ DW_TAG_lexical_block ]
!77 = metadata !{i32 786443, metadata !78, i32 16, i32 3, metadata !16, i32 1} ; [ DW_TAG_lexical_block ]
!78 = metadata !{i32 786443, metadata !79, i32 9, i32 1, metadata !16, i32 0} ; [ DW_TAG_lexical_block ]
!79 = metadata !{i32 786478, i32 0, metadata !16, metadata !"mmult_kernel", metadata !"mmult_kernel", metadata !"_Z12mmult_kernelPA16_fS0_Pf", metadata !16, i32 6, metadata !80, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, null, metadata !21, i32 9} ; [ DW_TAG_subprogram ]
!80 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !81, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!81 = metadata !{null, metadata !82, metadata !82, metadata !19}
!82 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !83} ; [ DW_TAG_pointer_type ]
!83 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 512, i64 32, i32 0, i32 0, metadata !20, metadata !84, i32 0, i32 0} ; [ DW_TAG_array_type ]
!84 = metadata !{metadata !37}
!85 = metadata !{i32 64, i32 3, metadata !32, null}
!86 = metadata !{i32 16, i32 35, metadata !77, metadata !85}
!87 = metadata !{i32 23, i32 77, metadata !88, metadata !85}
!88 = metadata !{i32 786443, metadata !89, i32 20, i32 50, metadata !16, i32 6} ; [ DW_TAG_lexical_block ]
!89 = metadata !{i32 786443, metadata !90, i32 20, i32 7, metadata !16, i32 5} ; [ DW_TAG_lexical_block ]
!90 = metadata !{i32 786443, metadata !75, i32 17, i32 48, metadata !16, i32 4} ; [ DW_TAG_lexical_block ]
!91 = metadata !{i32 17, i32 49, metadata !90, metadata !85}
!92 = metadata !{i32 18, i32 1, metadata !90, metadata !85}
!93 = metadata !{i32 24, i32 9, metadata !88, metadata !85}
!94 = metadata !{i32 26, i32 7, metadata !90, metadata !85}
!95 = metadata !{i32 27, i32 5, metadata !90, metadata !85}
!96 = metadata !{i32 17, i32 37, metadata !75, metadata !85}
!97 = metadata !{i32 786688, metadata !78, metadata !"index_b", metadata !16, i32 14, metadata !57, i32 0, metadata !85} ; [ DW_TAG_auto_variable ]
!98 = metadata !{i32 65, i32 1, metadata !32, null}
