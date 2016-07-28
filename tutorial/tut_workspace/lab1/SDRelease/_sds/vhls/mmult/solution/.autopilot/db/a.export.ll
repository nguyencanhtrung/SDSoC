; ModuleID = '/home/trungnguyen/SDSoC/tutorial/tut_workspace/lab1/SDRelease/_sds/vhls/mmult/solution/.autopilot/db/a.o.2.bc'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@p_str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@p_str2 = private unnamed_addr constant [12 x i8] c"hls_label_0\00", align 1
@p_str3 = private unnamed_addr constant [8 x i8] c"ap_fifo\00", align 1
@p_str4 = private unnamed_addr constant [12 x i8] c"hls_label_1\00", align 1
@p_str5 = private unnamed_addr constant [12 x i8] c"hls_label_2\00", align 1
@str = internal constant [6 x i8] c"mmult\00"

declare void @llvm.dbg.declare(metadata, metadata) nounwind readnone

define weak void @_ssdm_op_SpecPipeline(...) nounwind {
entry:
  ret void
}

define weak void @_ssdm_op_SpecLatency(...) nounwind {
entry:
  ret void
}

define weak void @_ssdm_op_SpecInterface(...) nounwind {
entry:
  ret void
}

declare void @llvm.dbg.value(metadata, i64, metadata) nounwind readnone

define weak void @_ssdm_op_SpecTopModule(...) {
entry:
  ret void
}

define weak i32 @_ssdm_op_SpecRegionBegin(...) {
entry:
  ret i32 0
}

define weak i32 @_ssdm_op_SpecRegionEnd(...) {
entry:
  ret i32 0
}

define weak void @_ssdm_op_SpecBitsMap(...) {
entry:
  ret void
}

define weak i32 @_ssdm_op_SpecLoopTripCount(...) {
entry:
  ret i32 0
}

define void @mmult(float* %in_A, float* %in_B, float* %out_C) {
  call void (...)* @_ssdm_op_SpecBitsMap(float* %in_A), !map !0
  call void (...)* @_ssdm_op_SpecBitsMap(float* %in_B), !map !6
  call void (...)* @_ssdm_op_SpecBitsMap(float* %out_C), !map !10
  call void (...)* @_ssdm_op_SpecTopModule([6 x i8]* @str) nounwind
  %a_buf_0 = alloca [64 x float], align 4
  %a_buf_1 = alloca [64 x float], align 4
  %a_buf_2 = alloca [64 x float], align 4
  %a_buf_3 = alloca [64 x float], align 4
  %a_buf_4 = alloca [64 x float], align 4
  %a_buf_5 = alloca [64 x float], align 4
  %a_buf_6 = alloca [64 x float], align 4
  %a_buf_7 = alloca [64 x float], align 4
  %a_buf_8 = alloca [64 x float], align 4
  %a_buf_9 = alloca [64 x float], align 4
  %a_buf_10 = alloca [64 x float], align 4
  %a_buf_11 = alloca [64 x float], align 4
  %a_buf_12 = alloca [64 x float], align 4
  %a_buf_13 = alloca [64 x float], align 4
  %a_buf_14 = alloca [64 x float], align 4
  %a_buf_15 = alloca [64 x float], align 4
  %b_buf_0 = alloca [64 x float], align 4
  %b_buf_1 = alloca [64 x float], align 4
  %b_buf_2 = alloca [64 x float], align 4
  %b_buf_3 = alloca [64 x float], align 4
  %b_buf_4 = alloca [64 x float], align 4
  %b_buf_5 = alloca [64 x float], align 4
  %b_buf_6 = alloca [64 x float], align 4
  %b_buf_7 = alloca [64 x float], align 4
  %b_buf_8 = alloca [64 x float], align 4
  %b_buf_9 = alloca [64 x float], align 4
  %b_buf_10 = alloca [64 x float], align 4
  %b_buf_11 = alloca [64 x float], align 4
  %b_buf_12 = alloca [64 x float], align 4
  %b_buf_13 = alloca [64 x float], align 4
  %b_buf_14 = alloca [64 x float], align 4
  %b_buf_15 = alloca [64 x float], align 4
  call void (...)* @_ssdm_op_SpecLatency(i32 1, i32 65535, [1 x i8]* @p_str) nounwind
  call void (...)* @_ssdm_op_SpecInterface(float* %in_A, [8 x i8]* @p_str3, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str)
  call void (...)* @_ssdm_op_SpecInterface(float* %in_B, [8 x i8]* @p_str3, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str)
  call void (...)* @_ssdm_op_SpecInterface(float* %out_C, [8 x i8]* @p_str3, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str)
  br label %.preheader5

.preheader5:                                      ; preds = %0, %1
  %indvar_flatten = phi i11 [ 0, %0 ], [ %indvar_flatten_next, %1 ]
  %i = phi i6 [ 0, %0 ], [ %i_mid2, %1 ]
  %j = phi i6 [ 0, %0 ], [ %j_2, %1 ]
  %exitcond_flatten = icmp eq i11 %indvar_flatten, -1024
  %indvar_flatten_next = add i11 %indvar_flatten, 1
  br i1 %exitcond_flatten, label %.preheader, label %.preheader5.preheader

; <label>:1                                       ; preds = %branch15, %branch14, %branch13, %branch12, %branch11, %branch10, %branch9, %branch8, %branch7, %branch6, %branch5, %branch4, %branch3, %branch2, %branch1, %branch0
  %empty = call i32 (...)* @_ssdm_op_SpecRegionEnd([12 x i8]* @p_str4, i32 %tmp_3) nounwind
  %j_2 = add i6 %j_mid2, 1
  br label %.preheader5

.preheader5.preheader:                            ; preds = %.preheader5
  %empty_6 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 1024, i64 1024, i64 1024)
  %exitcond = icmp eq i6 %j, -32
  %j_mid2 = select i1 %exitcond, i6 0, i6 %j
  %i_s = add i6 %i, 1
  %i_mid2 = select i1 %exitcond, i6 %i_s, i6 %i
  %tmp_3 = call i32 (...)* @_ssdm_op_SpecRegionBegin([12 x i8]* @p_str4) nounwind
  call void (...)* @_ssdm_op_SpecPipeline(i32 1, i32 1, i32 1, i32 0, [1 x i8]* @p_str) nounwind
  %in_A_read = call float @_ssdm_op_Read.ap_fifo.volatile.floatP(float* %in_A)
  %arrayNo_cast = call i5 @_ssdm_op_PartSelect.i5.i6.i32.i32(i6 %j_mid2, i32 1, i32 5)
  %tmp_4 = trunc i6 %j_mid2 to i1
  %tmp = call i7 @_ssdm_op_BitConcatenate.i7.i6.i1(i6 %i_mid2, i1 %tmp_4)
  %tmp_1 = zext i7 %tmp to i64
  %a_buf_0_addr = getelementptr [64 x float]* %a_buf_0, i64 0, i64 %tmp_1
  %a_buf_1_addr = getelementptr [64 x float]* %a_buf_1, i64 0, i64 %tmp_1
  %a_buf_2_addr = getelementptr [64 x float]* %a_buf_2, i64 0, i64 %tmp_1
  %a_buf_3_addr = getelementptr [64 x float]* %a_buf_3, i64 0, i64 %tmp_1
  %a_buf_4_addr = getelementptr [64 x float]* %a_buf_4, i64 0, i64 %tmp_1
  %a_buf_5_addr = getelementptr [64 x float]* %a_buf_5, i64 0, i64 %tmp_1
  %a_buf_6_addr = getelementptr [64 x float]* %a_buf_6, i64 0, i64 %tmp_1
  %a_buf_7_addr = getelementptr [64 x float]* %a_buf_7, i64 0, i64 %tmp_1
  %a_buf_8_addr = getelementptr [64 x float]* %a_buf_8, i64 0, i64 %tmp_1
  %a_buf_9_addr = getelementptr [64 x float]* %a_buf_9, i64 0, i64 %tmp_1
  %a_buf_10_addr = getelementptr [64 x float]* %a_buf_10, i64 0, i64 %tmp_1
  %a_buf_11_addr = getelementptr [64 x float]* %a_buf_11, i64 0, i64 %tmp_1
  %a_buf_12_addr = getelementptr [64 x float]* %a_buf_12, i64 0, i64 %tmp_1
  %a_buf_13_addr = getelementptr [64 x float]* %a_buf_13, i64 0, i64 %tmp_1
  %a_buf_14_addr = getelementptr [64 x float]* %a_buf_14, i64 0, i64 %tmp_1
  %a_buf_15_addr = getelementptr [64 x float]* %a_buf_15, i64 0, i64 %tmp_1
  switch i5 %arrayNo_cast, label %branch15 [
    i5 0, label %branch0
    i5 1, label %branch1
    i5 2, label %branch2
    i5 3, label %branch3
    i5 4, label %branch4
    i5 5, label %branch5
    i5 6, label %branch6
    i5 7, label %branch7
    i5 8, label %branch8
    i5 9, label %branch9
    i5 10, label %branch10
    i5 11, label %branch11
    i5 12, label %branch12
    i5 13, label %branch13
    i5 14, label %branch14
  ]

.preheader:                                       ; preds = %.preheader5, %2
  %indvar_flatten6 = phi i11 [ %indvar_flatten_next7, %2 ], [ 0, %.preheader5 ]
  %i_1 = phi i6 [ %i_1_mid2, %2 ], [ 0, %.preheader5 ]
  %j_1 = phi i6 [ %j_3, %2 ], [ 0, %.preheader5 ]
  %exitcond_flatten8 = icmp eq i11 %indvar_flatten6, -1024
  %indvar_flatten_next7 = add i11 %indvar_flatten6, 1
  br i1 %exitcond_flatten8, label %.preheader.i, label %.preheader4

; <label>:2                                       ; preds = %branch31, %branch30, %branch29, %branch28, %branch27, %branch26, %branch25, %branch24, %branch23, %branch22, %branch21, %branch20, %branch19, %branch18, %branch17, %branch16
  %empty_7 = call i32 (...)* @_ssdm_op_SpecRegionEnd([12 x i8]* @p_str5, i32 %tmp_7) nounwind
  %j_3 = add i6 %j_1_mid2, 1
  br label %.preheader

.preheader4:                                      ; preds = %.preheader
  %empty_8 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 1024, i64 1024, i64 1024)
  %exitcond1 = icmp eq i6 %j_1, -32
  %j_1_mid2 = select i1 %exitcond1, i6 0, i6 %j_1
  %i_2 = add i6 %i_1, 1
  %i_1_mid2 = select i1 %exitcond1, i6 %i_2, i6 %i_1
  %arrayNo1_cast = call i5 @_ssdm_op_PartSelect.i5.i6.i32.i32(i6 %i_1_mid2, i32 1, i32 5)
  %tmp_7 = call i32 (...)* @_ssdm_op_SpecRegionBegin([12 x i8]* @p_str5) nounwind
  call void (...)* @_ssdm_op_SpecPipeline(i32 1, i32 1, i32 1, i32 0, [1 x i8]* @p_str) nounwind
  %in_B_read = call float @_ssdm_op_Read.ap_fifo.volatile.floatP(float* %in_B)
  %tmp_trn_cast = zext i6 %j_1_mid2 to i7
  %tmp_5 = shl i6 %i_1_mid2, 5
  %p_addr_cast = zext i6 %tmp_5 to i7
  %p_addr1 = add i7 %p_addr_cast, %tmp_trn_cast
  %tmp_6 = zext i7 %p_addr1 to i64
  %b_buf_0_addr = getelementptr [64 x float]* %b_buf_0, i64 0, i64 %tmp_6
  %b_buf_1_addr = getelementptr [64 x float]* %b_buf_1, i64 0, i64 %tmp_6
  %b_buf_2_addr = getelementptr [64 x float]* %b_buf_2, i64 0, i64 %tmp_6
  %b_buf_3_addr = getelementptr [64 x float]* %b_buf_3, i64 0, i64 %tmp_6
  %b_buf_4_addr = getelementptr [64 x float]* %b_buf_4, i64 0, i64 %tmp_6
  %b_buf_5_addr = getelementptr [64 x float]* %b_buf_5, i64 0, i64 %tmp_6
  %b_buf_6_addr = getelementptr [64 x float]* %b_buf_6, i64 0, i64 %tmp_6
  %b_buf_7_addr = getelementptr [64 x float]* %b_buf_7, i64 0, i64 %tmp_6
  %b_buf_8_addr = getelementptr [64 x float]* %b_buf_8, i64 0, i64 %tmp_6
  %b_buf_9_addr = getelementptr [64 x float]* %b_buf_9, i64 0, i64 %tmp_6
  %b_buf_10_addr = getelementptr [64 x float]* %b_buf_10, i64 0, i64 %tmp_6
  %b_buf_11_addr = getelementptr [64 x float]* %b_buf_11, i64 0, i64 %tmp_6
  %b_buf_12_addr = getelementptr [64 x float]* %b_buf_12, i64 0, i64 %tmp_6
  %b_buf_13_addr = getelementptr [64 x float]* %b_buf_13, i64 0, i64 %tmp_6
  %b_buf_14_addr = getelementptr [64 x float]* %b_buf_14, i64 0, i64 %tmp_6
  %b_buf_15_addr = getelementptr [64 x float]* %b_buf_15, i64 0, i64 %tmp_6
  switch i5 %arrayNo1_cast, label %branch31 [
    i5 0, label %branch16
    i5 1, label %branch17
    i5 2, label %branch18
    i5 3, label %branch19
    i5 4, label %branch20
    i5 5, label %branch21
    i5 6, label %branch22
    i5 7, label %branch23
    i5 8, label %branch24
    i5 9, label %branch25
    i5 10, label %branch26
    i5 11, label %branch27
    i5 12, label %branch28
    i5 13, label %branch29
    i5 14, label %branch30
  ]

.preheader.i:                                     ; preds = %.preheader, %.preheader1131
  %indvar_flatten1 = phi i11 [ %indvar_flatten_next1, %.preheader1131 ], [ 0, %.preheader ]
  %index_a_0_i = phi i6 [ %index_a_0_i_mid2, %.preheader1131 ], [ 0, %.preheader ]
  %index_b_0_i = phi i6 [ %index_b, %.preheader1131 ], [ 0, %.preheader ]
  %exitcond_flatten1 = icmp eq i11 %indvar_flatten1, -1024
  %indvar_flatten_next1 = add i11 %indvar_flatten1, 1
  br i1 %exitcond_flatten1, label %mmult_kernel.exit, label %.preheader1131

.preheader1131:                                   ; preds = %.preheader.i
  %empty_9 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 1024, i64 1024, i64 1024)
  %exitcond1_i = icmp eq i6 %index_b_0_i, -32
  %index_b_0_i_mid2 = select i1 %exitcond1_i, i6 0, i6 %index_b_0_i
  %index_a = add i6 %index_a_0_i, 1
  %index_a_0_i_mid2 = select i1 %exitcond1_i, i6 %index_a, i6 %index_a_0_i
  %tmp_8 = call i7 @_ssdm_op_BitConcatenate.i7.i6.i1(i6 %index_a_0_i_mid2, i1 false)
  %tmp_9 = zext i7 %tmp_8 to i64
  %a_buf_0_addr_1 = getelementptr [64 x float]* %a_buf_0, i64 0, i64 %tmp_9
  %a_buf_0_load = load float* %a_buf_0_addr_1, align 16
  %tmp_s = or i7 %tmp_8, 1
  %p_addr2 = call i32 @_ssdm_op_BitConcatenate.i32.i25.i7(i25 0, i7 %tmp_s)
  %tmp_10 = zext i32 %p_addr2 to i64
  %a_buf_0_addr_2 = getelementptr [64 x float]* %a_buf_0, i64 0, i64 %tmp_10
  %a_buf_0_load_1 = load float* %a_buf_0_addr_2, align 4
  %a_buf_1_addr_1 = getelementptr [64 x float]* %a_buf_1, i64 0, i64 %tmp_9
  %a_buf_1_load = load float* %a_buf_1_addr_1, align 8
  %a_buf_1_addr_2 = getelementptr [64 x float]* %a_buf_1, i64 0, i64 %tmp_10
  %a_buf_1_load_1 = load float* %a_buf_1_addr_2, align 4
  %a_buf_2_addr_1 = getelementptr [64 x float]* %a_buf_2, i64 0, i64 %tmp_9
  %a_buf_2_load = load float* %a_buf_2_addr_1, align 16
  %a_buf_2_addr_2 = getelementptr [64 x float]* %a_buf_2, i64 0, i64 %tmp_10
  %a_buf_2_load_1 = load float* %a_buf_2_addr_2, align 4
  %a_buf_3_addr_1 = getelementptr [64 x float]* %a_buf_3, i64 0, i64 %tmp_9
  %a_buf_3_load = load float* %a_buf_3_addr_1, align 8
  %a_buf_3_addr_2 = getelementptr [64 x float]* %a_buf_3, i64 0, i64 %tmp_10
  %a_buf_3_load_1 = load float* %a_buf_3_addr_2, align 4
  %a_buf_4_addr_1 = getelementptr [64 x float]* %a_buf_4, i64 0, i64 %tmp_9
  %a_buf_4_load = load float* %a_buf_4_addr_1, align 16
  %a_buf_4_addr_2 = getelementptr [64 x float]* %a_buf_4, i64 0, i64 %tmp_10
  %a_buf_4_load_1 = load float* %a_buf_4_addr_2, align 4
  %a_buf_5_addr_1 = getelementptr [64 x float]* %a_buf_5, i64 0, i64 %tmp_9
  %a_buf_5_load = load float* %a_buf_5_addr_1, align 8
  %a_buf_5_addr_2 = getelementptr [64 x float]* %a_buf_5, i64 0, i64 %tmp_10
  %a_buf_5_load_1 = load float* %a_buf_5_addr_2, align 4
  %a_buf_6_addr_1 = getelementptr [64 x float]* %a_buf_6, i64 0, i64 %tmp_9
  %a_buf_6_load = load float* %a_buf_6_addr_1, align 16
  %a_buf_6_addr_2 = getelementptr [64 x float]* %a_buf_6, i64 0, i64 %tmp_10
  %a_buf_6_load_1 = load float* %a_buf_6_addr_2, align 4
  %a_buf_7_addr_1 = getelementptr [64 x float]* %a_buf_7, i64 0, i64 %tmp_9
  %a_buf_7_load = load float* %a_buf_7_addr_1, align 8
  %a_buf_7_addr_2 = getelementptr [64 x float]* %a_buf_7, i64 0, i64 %tmp_10
  %a_buf_7_load_1 = load float* %a_buf_7_addr_2, align 4
  %a_buf_8_addr_1 = getelementptr [64 x float]* %a_buf_8, i64 0, i64 %tmp_9
  %a_buf_8_load = load float* %a_buf_8_addr_1, align 16
  %a_buf_8_addr_2 = getelementptr [64 x float]* %a_buf_8, i64 0, i64 %tmp_10
  %a_buf_8_load_1 = load float* %a_buf_8_addr_2, align 4
  %a_buf_9_addr_1 = getelementptr [64 x float]* %a_buf_9, i64 0, i64 %tmp_9
  %a_buf_9_load = load float* %a_buf_9_addr_1, align 8
  %a_buf_9_addr_2 = getelementptr [64 x float]* %a_buf_9, i64 0, i64 %tmp_10
  %a_buf_9_load_1 = load float* %a_buf_9_addr_2, align 4
  %a_buf_10_addr_1 = getelementptr [64 x float]* %a_buf_10, i64 0, i64 %tmp_9
  %a_buf_10_load = load float* %a_buf_10_addr_1, align 16
  %a_buf_10_addr_2 = getelementptr [64 x float]* %a_buf_10, i64 0, i64 %tmp_10
  %a_buf_10_load_1 = load float* %a_buf_10_addr_2, align 4
  %a_buf_11_addr_1 = getelementptr [64 x float]* %a_buf_11, i64 0, i64 %tmp_9
  %a_buf_11_load = load float* %a_buf_11_addr_1, align 8
  %a_buf_11_addr_2 = getelementptr [64 x float]* %a_buf_11, i64 0, i64 %tmp_10
  %a_buf_11_load_1 = load float* %a_buf_11_addr_2, align 4
  %a_buf_12_addr_1 = getelementptr [64 x float]* %a_buf_12, i64 0, i64 %tmp_9
  %a_buf_12_load = load float* %a_buf_12_addr_1, align 16
  %a_buf_12_addr_2 = getelementptr [64 x float]* %a_buf_12, i64 0, i64 %tmp_10
  %a_buf_12_load_1 = load float* %a_buf_12_addr_2, align 4
  %a_buf_13_addr_1 = getelementptr [64 x float]* %a_buf_13, i64 0, i64 %tmp_9
  %a_buf_13_load = load float* %a_buf_13_addr_1, align 8
  %a_buf_13_addr_2 = getelementptr [64 x float]* %a_buf_13, i64 0, i64 %tmp_10
  %a_buf_13_load_1 = load float* %a_buf_13_addr_2, align 4
  %a_buf_14_addr_1 = getelementptr [64 x float]* %a_buf_14, i64 0, i64 %tmp_9
  %a_buf_14_load = load float* %a_buf_14_addr_1, align 16
  %a_buf_14_addr_2 = getelementptr [64 x float]* %a_buf_14, i64 0, i64 %tmp_10
  %a_buf_14_load_1 = load float* %a_buf_14_addr_2, align 4
  %a_buf_15_addr_1 = getelementptr [64 x float]* %a_buf_15, i64 0, i64 %tmp_9
  %a_buf_15_load = load float* %a_buf_15_addr_1, align 8
  %a_buf_15_addr_2 = getelementptr [64 x float]* %a_buf_15, i64 0, i64 %tmp_10
  %a_buf_15_load_1 = load float* %a_buf_15_addr_2, align 4
  %tmp_2 = call i32 (...)* @_ssdm_op_SpecRegionBegin([12 x i8]* @p_str2) nounwind
  call void (...)* @_ssdm_op_SpecPipeline(i32 1, i32 1, i32 1, i32 0, [1 x i8]* @p_str) nounwind
  %tmp_4_trn_cast = zext i6 %index_b_0_i_mid2 to i7
  %tmp_11 = zext i6 %index_b_0_i_mid2 to i64
  %b_buf_0_addr_1 = getelementptr [64 x float]* %b_buf_0, i64 0, i64 %tmp_11
  %b_buf_0_load = load float* %b_buf_0_addr_1, align 4
  %product_term = fmul float %a_buf_0_load, %b_buf_0_load
  %result = fadd float %product_term, 0.000000e+00
  %p_addr3 = add i7 %tmp_4_trn_cast, 32
  %tmp_12 = zext i7 %p_addr3 to i64
  %b_buf_0_addr_2 = getelementptr [64 x float]* %b_buf_0, i64 0, i64 %tmp_12
  %b_buf_0_load_1 = load float* %b_buf_0_addr_2, align 4
  %product_term_1 = fmul float %a_buf_0_load_1, %b_buf_0_load_1
  %result_1 = fadd float %result, %product_term_1
  %b_buf_1_addr_1 = getelementptr [64 x float]* %b_buf_1, i64 0, i64 %tmp_11
  %b_buf_1_load = load float* %b_buf_1_addr_1, align 4
  %product_term_2 = fmul float %a_buf_1_load, %b_buf_1_load
  %result_2 = fadd float %result_1, %product_term_2
  %b_buf_1_addr_2 = getelementptr [64 x float]* %b_buf_1, i64 0, i64 %tmp_12
  %b_buf_1_load_1 = load float* %b_buf_1_addr_2, align 4
  %product_term_3 = fmul float %a_buf_1_load_1, %b_buf_1_load_1
  %result_3 = fadd float %result_2, %product_term_3
  %b_buf_2_addr_1 = getelementptr [64 x float]* %b_buf_2, i64 0, i64 %tmp_11
  %b_buf_2_load = load float* %b_buf_2_addr_1, align 4
  %product_term_4 = fmul float %a_buf_2_load, %b_buf_2_load
  %result_4 = fadd float %result_3, %product_term_4
  %b_buf_2_addr_2 = getelementptr [64 x float]* %b_buf_2, i64 0, i64 %tmp_12
  %b_buf_2_load_1 = load float* %b_buf_2_addr_2, align 4
  %product_term_5 = fmul float %a_buf_2_load_1, %b_buf_2_load_1
  %result_5 = fadd float %result_4, %product_term_5
  %b_buf_3_addr_1 = getelementptr [64 x float]* %b_buf_3, i64 0, i64 %tmp_11
  %b_buf_3_load = load float* %b_buf_3_addr_1, align 4
  %product_term_6 = fmul float %a_buf_3_load, %b_buf_3_load
  %result_6 = fadd float %result_5, %product_term_6
  %b_buf_3_addr_2 = getelementptr [64 x float]* %b_buf_3, i64 0, i64 %tmp_12
  %b_buf_3_load_1 = load float* %b_buf_3_addr_2, align 4
  %product_term_7 = fmul float %a_buf_3_load_1, %b_buf_3_load_1
  %result_7 = fadd float %result_6, %product_term_7
  %b_buf_4_addr_1 = getelementptr [64 x float]* %b_buf_4, i64 0, i64 %tmp_11
  %b_buf_4_load = load float* %b_buf_4_addr_1, align 4
  %product_term_8 = fmul float %a_buf_4_load, %b_buf_4_load
  %result_8 = fadd float %result_7, %product_term_8
  %b_buf_4_addr_2 = getelementptr [64 x float]* %b_buf_4, i64 0, i64 %tmp_12
  %b_buf_4_load_1 = load float* %b_buf_4_addr_2, align 4
  %product_term_9 = fmul float %a_buf_4_load_1, %b_buf_4_load_1
  %result_9 = fadd float %result_8, %product_term_9
  %b_buf_5_addr_1 = getelementptr [64 x float]* %b_buf_5, i64 0, i64 %tmp_11
  %b_buf_5_load = load float* %b_buf_5_addr_1, align 4
  %product_term_s = fmul float %a_buf_5_load, %b_buf_5_load
  %result_s = fadd float %result_9, %product_term_s
  %b_buf_5_addr_2 = getelementptr [64 x float]* %b_buf_5, i64 0, i64 %tmp_12
  %b_buf_5_load_1 = load float* %b_buf_5_addr_2, align 4
  %product_term_10 = fmul float %a_buf_5_load_1, %b_buf_5_load_1
  %result_10 = fadd float %result_s, %product_term_10
  %b_buf_6_addr_1 = getelementptr [64 x float]* %b_buf_6, i64 0, i64 %tmp_11
  %b_buf_6_load = load float* %b_buf_6_addr_1, align 4
  %product_term_11 = fmul float %a_buf_6_load, %b_buf_6_load
  %result_11 = fadd float %result_10, %product_term_11
  %b_buf_6_addr_2 = getelementptr [64 x float]* %b_buf_6, i64 0, i64 %tmp_12
  %b_buf_6_load_1 = load float* %b_buf_6_addr_2, align 4
  %product_term_12 = fmul float %a_buf_6_load_1, %b_buf_6_load_1
  %result_12 = fadd float %result_11, %product_term_12
  %b_buf_7_addr_1 = getelementptr [64 x float]* %b_buf_7, i64 0, i64 %tmp_11
  %b_buf_7_load = load float* %b_buf_7_addr_1, align 4
  %product_term_13 = fmul float %a_buf_7_load, %b_buf_7_load
  %result_13 = fadd float %result_12, %product_term_13
  %b_buf_7_addr_2 = getelementptr [64 x float]* %b_buf_7, i64 0, i64 %tmp_12
  %b_buf_7_load_1 = load float* %b_buf_7_addr_2, align 4
  %product_term_14 = fmul float %a_buf_7_load_1, %b_buf_7_load_1
  %result_14 = fadd float %result_13, %product_term_14
  %b_buf_8_addr_1 = getelementptr [64 x float]* %b_buf_8, i64 0, i64 %tmp_11
  %b_buf_8_load = load float* %b_buf_8_addr_1, align 4
  %product_term_15 = fmul float %a_buf_8_load, %b_buf_8_load
  %result_15 = fadd float %result_14, %product_term_15
  %b_buf_8_addr_2 = getelementptr [64 x float]* %b_buf_8, i64 0, i64 %tmp_12
  %b_buf_8_load_1 = load float* %b_buf_8_addr_2, align 4
  %product_term_16 = fmul float %a_buf_8_load_1, %b_buf_8_load_1
  %result_16 = fadd float %result_15, %product_term_16
  %b_buf_9_addr_1 = getelementptr [64 x float]* %b_buf_9, i64 0, i64 %tmp_11
  %b_buf_9_load = load float* %b_buf_9_addr_1, align 4
  %product_term_17 = fmul float %a_buf_9_load, %b_buf_9_load
  %result_17 = fadd float %result_16, %product_term_17
  %b_buf_9_addr_2 = getelementptr [64 x float]* %b_buf_9, i64 0, i64 %tmp_12
  %b_buf_9_load_1 = load float* %b_buf_9_addr_2, align 4
  %product_term_18 = fmul float %a_buf_9_load_1, %b_buf_9_load_1
  %result_18 = fadd float %result_17, %product_term_18
  %b_buf_10_addr_1 = getelementptr [64 x float]* %b_buf_10, i64 0, i64 %tmp_11
  %b_buf_10_load = load float* %b_buf_10_addr_1, align 4
  %product_term_19 = fmul float %a_buf_10_load, %b_buf_10_load
  %result_19 = fadd float %result_18, %product_term_19
  %b_buf_10_addr_2 = getelementptr [64 x float]* %b_buf_10, i64 0, i64 %tmp_12
  %b_buf_10_load_1 = load float* %b_buf_10_addr_2, align 4
  %product_term_20 = fmul float %a_buf_10_load_1, %b_buf_10_load_1
  %result_20 = fadd float %result_19, %product_term_20
  %b_buf_11_addr_1 = getelementptr [64 x float]* %b_buf_11, i64 0, i64 %tmp_11
  %b_buf_11_load = load float* %b_buf_11_addr_1, align 4
  %product_term_21 = fmul float %a_buf_11_load, %b_buf_11_load
  %result_21 = fadd float %result_20, %product_term_21
  %b_buf_11_addr_2 = getelementptr [64 x float]* %b_buf_11, i64 0, i64 %tmp_12
  %b_buf_11_load_1 = load float* %b_buf_11_addr_2, align 4
  %product_term_22 = fmul float %a_buf_11_load_1, %b_buf_11_load_1
  %result_22 = fadd float %result_21, %product_term_22
  %b_buf_12_addr_1 = getelementptr [64 x float]* %b_buf_12, i64 0, i64 %tmp_11
  %b_buf_12_load = load float* %b_buf_12_addr_1, align 4
  %product_term_23 = fmul float %a_buf_12_load, %b_buf_12_load
  %result_23 = fadd float %result_22, %product_term_23
  %b_buf_12_addr_2 = getelementptr [64 x float]* %b_buf_12, i64 0, i64 %tmp_12
  %b_buf_12_load_1 = load float* %b_buf_12_addr_2, align 4
  %product_term_24 = fmul float %a_buf_12_load_1, %b_buf_12_load_1
  %result_24 = fadd float %result_23, %product_term_24
  %b_buf_13_addr_1 = getelementptr [64 x float]* %b_buf_13, i64 0, i64 %tmp_11
  %b_buf_13_load = load float* %b_buf_13_addr_1, align 4
  %product_term_25 = fmul float %a_buf_13_load, %b_buf_13_load
  %result_25 = fadd float %result_24, %product_term_25
  %b_buf_13_addr_2 = getelementptr [64 x float]* %b_buf_13, i64 0, i64 %tmp_12
  %b_buf_13_load_1 = load float* %b_buf_13_addr_2, align 4
  %product_term_26 = fmul float %a_buf_13_load_1, %b_buf_13_load_1
  %result_26 = fadd float %result_25, %product_term_26
  %b_buf_14_addr_1 = getelementptr [64 x float]* %b_buf_14, i64 0, i64 %tmp_11
  %b_buf_14_load = load float* %b_buf_14_addr_1, align 4
  %product_term_27 = fmul float %a_buf_14_load, %b_buf_14_load
  %result_27 = fadd float %result_26, %product_term_27
  %b_buf_14_addr_2 = getelementptr [64 x float]* %b_buf_14, i64 0, i64 %tmp_12
  %b_buf_14_load_1 = load float* %b_buf_14_addr_2, align 4
  %product_term_28 = fmul float %a_buf_14_load_1, %b_buf_14_load_1
  %result_28 = fadd float %result_27, %product_term_28
  %b_buf_15_addr_1 = getelementptr [64 x float]* %b_buf_15, i64 0, i64 %tmp_11
  %b_buf_15_load = load float* %b_buf_15_addr_1, align 4
  %product_term_29 = fmul float %a_buf_15_load, %b_buf_15_load
  %result_29 = fadd float %result_28, %product_term_29
  %b_buf_15_addr_2 = getelementptr [64 x float]* %b_buf_15, i64 0, i64 %tmp_12
  %b_buf_15_load_1 = load float* %b_buf_15_addr_2, align 4
  %product_term_30 = fmul float %a_buf_15_load_1, %b_buf_15_load_1
  %result_30 = fadd float %result_29, %product_term_30
  call void @_ssdm_op_Write.ap_fifo.volatile.floatP(float* %out_C, float %result_30)
  %empty_10 = call i32 (...)* @_ssdm_op_SpecRegionEnd([12 x i8]* @p_str2, i32 %tmp_2) nounwind
  %index_b = add i6 %index_b_0_i_mid2, 1
  br label %.preheader.i

mmult_kernel.exit:                                ; preds = %.preheader.i
  ret void

branch0:                                          ; preds = %.preheader5.preheader
  store float %in_A_read, float* %a_buf_0_addr, align 4
  br label %1

branch1:                                          ; preds = %.preheader5.preheader
  store float %in_A_read, float* %a_buf_1_addr, align 4
  br label %1

branch2:                                          ; preds = %.preheader5.preheader
  store float %in_A_read, float* %a_buf_2_addr, align 4
  br label %1

branch3:                                          ; preds = %.preheader5.preheader
  store float %in_A_read, float* %a_buf_3_addr, align 4
  br label %1

branch4:                                          ; preds = %.preheader5.preheader
  store float %in_A_read, float* %a_buf_4_addr, align 4
  br label %1

branch5:                                          ; preds = %.preheader5.preheader
  store float %in_A_read, float* %a_buf_5_addr, align 4
  br label %1

branch6:                                          ; preds = %.preheader5.preheader
  store float %in_A_read, float* %a_buf_6_addr, align 4
  br label %1

branch7:                                          ; preds = %.preheader5.preheader
  store float %in_A_read, float* %a_buf_7_addr, align 4
  br label %1

branch8:                                          ; preds = %.preheader5.preheader
  store float %in_A_read, float* %a_buf_8_addr, align 4
  br label %1

branch9:                                          ; preds = %.preheader5.preheader
  store float %in_A_read, float* %a_buf_9_addr, align 4
  br label %1

branch10:                                         ; preds = %.preheader5.preheader
  store float %in_A_read, float* %a_buf_10_addr, align 4
  br label %1

branch11:                                         ; preds = %.preheader5.preheader
  store float %in_A_read, float* %a_buf_11_addr, align 4
  br label %1

branch12:                                         ; preds = %.preheader5.preheader
  store float %in_A_read, float* %a_buf_12_addr, align 4
  br label %1

branch13:                                         ; preds = %.preheader5.preheader
  store float %in_A_read, float* %a_buf_13_addr, align 4
  br label %1

branch14:                                         ; preds = %.preheader5.preheader
  store float %in_A_read, float* %a_buf_14_addr, align 4
  br label %1

branch15:                                         ; preds = %.preheader5.preheader
  store float %in_A_read, float* %a_buf_15_addr, align 4
  br label %1

branch16:                                         ; preds = %.preheader4
  store float %in_B_read, float* %b_buf_0_addr, align 4
  br label %2

branch17:                                         ; preds = %.preheader4
  store float %in_B_read, float* %b_buf_1_addr, align 4
  br label %2

branch18:                                         ; preds = %.preheader4
  store float %in_B_read, float* %b_buf_2_addr, align 4
  br label %2

branch19:                                         ; preds = %.preheader4
  store float %in_B_read, float* %b_buf_3_addr, align 4
  br label %2

branch20:                                         ; preds = %.preheader4
  store float %in_B_read, float* %b_buf_4_addr, align 4
  br label %2

branch21:                                         ; preds = %.preheader4
  store float %in_B_read, float* %b_buf_5_addr, align 4
  br label %2

branch22:                                         ; preds = %.preheader4
  store float %in_B_read, float* %b_buf_6_addr, align 4
  br label %2

branch23:                                         ; preds = %.preheader4
  store float %in_B_read, float* %b_buf_7_addr, align 4
  br label %2

branch24:                                         ; preds = %.preheader4
  store float %in_B_read, float* %b_buf_8_addr, align 4
  br label %2

branch25:                                         ; preds = %.preheader4
  store float %in_B_read, float* %b_buf_9_addr, align 4
  br label %2

branch26:                                         ; preds = %.preheader4
  store float %in_B_read, float* %b_buf_10_addr, align 4
  br label %2

branch27:                                         ; preds = %.preheader4
  store float %in_B_read, float* %b_buf_11_addr, align 4
  br label %2

branch28:                                         ; preds = %.preheader4
  store float %in_B_read, float* %b_buf_12_addr, align 4
  br label %2

branch29:                                         ; preds = %.preheader4
  store float %in_B_read, float* %b_buf_13_addr, align 4
  br label %2

branch30:                                         ; preds = %.preheader4
  store float %in_B_read, float* %b_buf_14_addr, align 4
  br label %2

branch31:                                         ; preds = %.preheader4
  store float %in_B_read, float* %b_buf_15_addr, align 4
  br label %2
}

define weak i5 @_ssdm_op_PartSelect.i5.i6.i32.i32(i6, i32, i32) nounwind readnone {
entry:
  %empty = call i6 @llvm.part.select.i6(i6 %0, i32 %1, i32 %2)
  %empty_11 = trunc i6 %empty to i5
  ret i5 %empty_11
}

define weak i7 @_ssdm_op_BitConcatenate.i7.i6.i1(i6, i1) nounwind readnone {
entry:
  %empty = zext i6 %0 to i7
  %empty_12 = zext i1 %1 to i7
  %empty_13 = shl i7 %empty, 1
  %empty_14 = or i7 %empty_13, %empty_12
  ret i7 %empty_14
}

define weak i32 @_ssdm_op_BitConcatenate.i32.i25.i7(i25, i7) nounwind readnone {
entry:
  %empty = zext i25 %0 to i32
  %empty_15 = zext i7 %1 to i32
  %empty_16 = shl i32 %empty, 7
  %empty_17 = or i32 %empty_16, %empty_15
  ret i32 %empty_17
}

define weak float @_ssdm_op_Read.ap_fifo.volatile.floatP(float*) {
entry:
  %empty = call float @_autotb_FifoRead_float(float* %0)
  ret float %empty
}

define weak void @_ssdm_op_Write.ap_fifo.volatile.floatP(float*, float) {
entry:
  %empty = call float @_autotb_FifoWrite_float(float* %0, float %1)
  ret void
}

declare float @_autotb_FifoRead_float(float*)

declare float @_autotb_FifoWrite_float(float*, float)

declare i6 @llvm.part.select.i6(i6, i32, i32) nounwind readnone

declare i1 @_ssdm_op_PartSelect.i1.i6.i32.i32(i6, i32, i32) nounwind readnone

declare i6 @_ssdm_op_BitConcatenate.i6.i1.i5(i1, i5) nounwind readnone

!llvm.map.gv = !{}

!0 = metadata !{metadata !1}
!1 = metadata !{i32 0, i32 31, metadata !2}
!2 = metadata !{metadata !3}
!3 = metadata !{metadata !"in_A", metadata !4, metadata !"float", i32 0, i32 31}
!4 = metadata !{metadata !5}
!5 = metadata !{i32 0, i32 1023, i32 1}
!6 = metadata !{metadata !7}
!7 = metadata !{i32 0, i32 31, metadata !8}
!8 = metadata !{metadata !9}
!9 = metadata !{metadata !"in_B", metadata !4, metadata !"float", i32 0, i32 31}
!10 = metadata !{metadata !11}
!11 = metadata !{i32 0, i32 31, metadata !12}
!12 = metadata !{metadata !13}
!13 = metadata !{metadata !"out_C", metadata !4, metadata !"float", i32 0, i32 31}
