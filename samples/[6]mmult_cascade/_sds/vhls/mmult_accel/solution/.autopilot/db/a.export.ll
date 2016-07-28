; ModuleID = '/home/trungnguyen/SDSoC/samples/mmult_cascade/_sds/vhls/mmult_accel/solution/.autopilot/db/a.o.2.bc'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@p_str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@p_str2 = private unnamed_addr constant [12 x i8] c"hls_label_0\00", align 1
@p_str3 = private unnamed_addr constant [8 x i8] c"ap_fifo\00", align 1
@p_str4 = private unnamed_addr constant [12 x i8] c"hls_label_1\00", align 1
@p_str5 = private unnamed_addr constant [12 x i8] c"hls_label_2\00", align 1
@str = internal constant [12 x i8] c"mmult_accel\00"

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

define void @mmult_accel(float* %in_A, float* %in_B, float* %out_C) {
  call void (...)* @_ssdm_op_SpecBitsMap(float* %in_A), !map !0
  call void (...)* @_ssdm_op_SpecBitsMap(float* %in_B), !map !6
  call void (...)* @_ssdm_op_SpecBitsMap(float* %out_C), !map !10
  call void (...)* @_ssdm_op_SpecTopModule([12 x i8]* @str) nounwind
  %a_buf_0 = alloca [64 x float], align 4
  %a_buf_1 = alloca [64 x float], align 4
  %a_buf_2 = alloca [64 x float], align 4
  %a_buf_3 = alloca [64 x float], align 4
  %b_buf_0 = alloca [64 x float], align 4
  %b_buf_1 = alloca [64 x float], align 4
  %b_buf_2 = alloca [64 x float], align 4
  %b_buf_3 = alloca [64 x float], align 4
  call void (...)* @_ssdm_op_SpecLatency(i32 1, i32 65535, [1 x i8]* @p_str) nounwind
  call void (...)* @_ssdm_op_SpecInterface(float* %in_A, [8 x i8]* @p_str3, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str)
  call void (...)* @_ssdm_op_SpecInterface(float* %in_B, [8 x i8]* @p_str3, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str)
  call void (...)* @_ssdm_op_SpecInterface(float* %out_C, [8 x i8]* @p_str3, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str)
  br label %.preheader5

.preheader5:                                      ; preds = %0, %1
  %indvar_flatten = phi i9 [ 0, %0 ], [ %indvar_flatten_next, %1 ]
  %i = phi i5 [ 0, %0 ], [ %i_mid2, %1 ]
  %j = phi i5 [ 0, %0 ], [ %j_2, %1 ]
  %exitcond_flatten = icmp eq i9 %indvar_flatten, -256
  %indvar_flatten_next = add i9 %indvar_flatten, 1
  br i1 %exitcond_flatten, label %.preheader, label %.preheader5.preheader

; <label>:1                                       ; preds = %branch3, %branch2, %branch1, %branch0
  %empty = call i32 (...)* @_ssdm_op_SpecRegionEnd([12 x i8]* @p_str4, i32 %tmp_3) nounwind
  %j_2 = add i5 %j_mid2, 1
  br label %.preheader5

.preheader5.preheader:                            ; preds = %.preheader5
  %empty_6 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 256, i64 256, i64 256)
  %exitcond = icmp eq i5 %j, -16
  %j_mid2 = select i1 %exitcond, i5 0, i5 %j
  %i_s = add i5 %i, 1
  %i_mid2 = select i1 %exitcond, i5 %i_s, i5 %i
  %tmp_3 = call i32 (...)* @_ssdm_op_SpecRegionBegin([12 x i8]* @p_str4) nounwind
  call void (...)* @_ssdm_op_SpecPipeline(i32 1, i32 1, i32 1, i32 0, [1 x i8]* @p_str) nounwind
  %in_A_read = call float @_ssdm_op_Read.ap_fifo.volatile.floatP(float* %in_A)
  %arrayNo_cast = call i3 @_ssdm_op_PartSelect.i3.i5.i32.i32(i5 %j_mid2, i32 2, i32 4)
  %tmp_4 = trunc i5 %j_mid2 to i2
  %tmp = call i7 @_ssdm_op_BitConcatenate.i7.i5.i2(i5 %i_mid2, i2 %tmp_4)
  %tmp_1 = zext i7 %tmp to i64
  %a_buf_0_addr = getelementptr [64 x float]* %a_buf_0, i64 0, i64 %tmp_1
  %a_buf_1_addr = getelementptr [64 x float]* %a_buf_1, i64 0, i64 %tmp_1
  %a_buf_2_addr = getelementptr [64 x float]* %a_buf_2, i64 0, i64 %tmp_1
  %a_buf_3_addr = getelementptr [64 x float]* %a_buf_3, i64 0, i64 %tmp_1
  switch i3 %arrayNo_cast, label %branch3 [
    i3 0, label %branch0
    i3 1, label %branch1
    i3 2, label %branch2
  ]

.preheader:                                       ; preds = %.preheader5, %2
  %indvar_flatten6 = phi i9 [ %indvar_flatten_next7, %2 ], [ 0, %.preheader5 ]
  %i_1 = phi i5 [ %i_1_mid2, %2 ], [ 0, %.preheader5 ]
  %j_1 = phi i5 [ %j_3, %2 ], [ 0, %.preheader5 ]
  %exitcond_flatten8 = icmp eq i9 %indvar_flatten6, -256
  %indvar_flatten_next7 = add i9 %indvar_flatten6, 1
  br i1 %exitcond_flatten8, label %.preheader.i, label %.preheader4

; <label>:2                                       ; preds = %branch7, %branch6, %branch5, %branch4
  %empty_7 = call i32 (...)* @_ssdm_op_SpecRegionEnd([12 x i8]* @p_str5, i32 %tmp_7) nounwind
  %j_3 = add i5 %j_1_mid2, 1
  br label %.preheader

.preheader4:                                      ; preds = %.preheader
  %empty_8 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 256, i64 256, i64 256)
  %exitcond1 = icmp eq i5 %j_1, -16
  %j_1_mid2 = select i1 %exitcond1, i5 0, i5 %j_1
  %i_2 = add i5 %i_1, 1
  %i_1_mid2 = select i1 %exitcond1, i5 %i_2, i5 %i_1
  %arrayNo1_cast = call i3 @_ssdm_op_PartSelect.i3.i5.i32.i32(i5 %i_1_mid2, i32 2, i32 4)
  %tmp_7 = call i32 (...)* @_ssdm_op_SpecRegionBegin([12 x i8]* @p_str5) nounwind
  call void (...)* @_ssdm_op_SpecPipeline(i32 1, i32 1, i32 1, i32 0, [1 x i8]* @p_str) nounwind
  %in_B_read = call float @_ssdm_op_Read.ap_fifo.volatile.floatP(float* %in_B)
  %tmp_trn_cast = zext i5 %j_1_mid2 to i7
  %tmp_20 = trunc i5 %i_1_mid2 to i2
  %tmp_5 = call i6 @_ssdm_op_BitConcatenate.i6.i2.i4(i2 %tmp_20, i4 0)
  %p_addr_cast = zext i6 %tmp_5 to i7
  %p_addr1 = add i7 %p_addr_cast, %tmp_trn_cast
  %tmp_6 = zext i7 %p_addr1 to i64
  %b_buf_0_addr = getelementptr [64 x float]* %b_buf_0, i64 0, i64 %tmp_6
  %b_buf_1_addr = getelementptr [64 x float]* %b_buf_1, i64 0, i64 %tmp_6
  %b_buf_2_addr = getelementptr [64 x float]* %b_buf_2, i64 0, i64 %tmp_6
  %b_buf_3_addr = getelementptr [64 x float]* %b_buf_3, i64 0, i64 %tmp_6
  switch i3 %arrayNo1_cast, label %branch7 [
    i3 0, label %branch4
    i3 1, label %branch5
    i3 2, label %branch6
  ]

.preheader.i:                                     ; preds = %.preheader, %.preheader179
  %indvar_flatten1 = phi i9 [ %indvar_flatten_next1, %.preheader179 ], [ 0, %.preheader ]
  %index_a_0_i = phi i5 [ %index_a_0_i_mid2, %.preheader179 ], [ 0, %.preheader ]
  %index_b_0_i = phi i5 [ %index_b, %.preheader179 ], [ 0, %.preheader ]
  %exitcond_flatten1 = icmp eq i9 %indvar_flatten1, -256
  %indvar_flatten_next1 = add i9 %indvar_flatten1, 1
  br i1 %exitcond_flatten1, label %mmult_kernel.exit, label %.preheader179

.preheader179:                                    ; preds = %.preheader.i
  %empty_9 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 256, i64 256, i64 256)
  %exitcond1_i = icmp eq i5 %index_b_0_i, -16
  %index_b_0_i_mid2 = select i1 %exitcond1_i, i5 0, i5 %index_b_0_i
  %index_a = add i5 %index_a_0_i, 1
  %index_a_0_i_mid2 = select i1 %exitcond1_i, i5 %index_a, i5 %index_a_0_i
  %tmp_8 = call i7 @_ssdm_op_BitConcatenate.i7.i5.i2(i5 %index_a_0_i_mid2, i2 0)
  %tmp_9 = zext i7 %tmp_8 to i64
  %a_buf_0_addr_1 = getelementptr [64 x float]* %a_buf_0, i64 0, i64 %tmp_9
  %a_buf_0_load = load float* %a_buf_0_addr_1, align 16
  %tmp_s = or i7 %tmp_8, 1
  %p_addr2 = call i32 @_ssdm_op_BitConcatenate.i32.i25.i7(i25 0, i7 %tmp_s)
  %tmp_10 = zext i32 %p_addr2 to i64
  %a_buf_0_addr_2 = getelementptr [64 x float]* %a_buf_0, i64 0, i64 %tmp_10
  %a_buf_0_load_1 = load float* %a_buf_0_addr_2, align 4
  %tmp_11 = or i7 %tmp_8, 2
  %p_addr3 = call i32 @_ssdm_op_BitConcatenate.i32.i25.i7(i25 0, i7 %tmp_11)
  %tmp_12 = zext i32 %p_addr3 to i64
  %a_buf_0_addr_3 = getelementptr [64 x float]* %a_buf_0, i64 0, i64 %tmp_12
  %a_buf_0_load_2 = load float* %a_buf_0_addr_3, align 8
  %tmp_13 = or i7 %tmp_8, 3
  %p_addr4 = call i32 @_ssdm_op_BitConcatenate.i32.i25.i7(i25 0, i7 %tmp_13)
  %tmp_14 = zext i32 %p_addr4 to i64
  %a_buf_0_addr_4 = getelementptr [64 x float]* %a_buf_0, i64 0, i64 %tmp_14
  %a_buf_0_load_3 = load float* %a_buf_0_addr_4, align 4
  %a_buf_1_addr_1 = getelementptr [64 x float]* %a_buf_1, i64 0, i64 %tmp_9
  %a_buf_1_load = load float* %a_buf_1_addr_1, align 16
  %a_buf_1_addr_2 = getelementptr [64 x float]* %a_buf_1, i64 0, i64 %tmp_10
  %a_buf_1_load_1 = load float* %a_buf_1_addr_2, align 4
  %a_buf_1_addr_3 = getelementptr [64 x float]* %a_buf_1, i64 0, i64 %tmp_12
  %a_buf_1_load_2 = load float* %a_buf_1_addr_3, align 8
  %a_buf_1_addr_4 = getelementptr [64 x float]* %a_buf_1, i64 0, i64 %tmp_14
  %a_buf_1_load_3 = load float* %a_buf_1_addr_4, align 4
  %a_buf_2_addr_1 = getelementptr [64 x float]* %a_buf_2, i64 0, i64 %tmp_9
  %a_buf_2_load = load float* %a_buf_2_addr_1, align 16
  %a_buf_2_addr_2 = getelementptr [64 x float]* %a_buf_2, i64 0, i64 %tmp_10
  %a_buf_2_load_1 = load float* %a_buf_2_addr_2, align 4
  %a_buf_2_addr_3 = getelementptr [64 x float]* %a_buf_2, i64 0, i64 %tmp_12
  %a_buf_2_load_2 = load float* %a_buf_2_addr_3, align 8
  %a_buf_2_addr_4 = getelementptr [64 x float]* %a_buf_2, i64 0, i64 %tmp_14
  %a_buf_2_load_3 = load float* %a_buf_2_addr_4, align 4
  %a_buf_3_addr_1 = getelementptr [64 x float]* %a_buf_3, i64 0, i64 %tmp_9
  %a_buf_3_load = load float* %a_buf_3_addr_1, align 16
  %a_buf_3_addr_2 = getelementptr [64 x float]* %a_buf_3, i64 0, i64 %tmp_10
  %a_buf_3_load_1 = load float* %a_buf_3_addr_2, align 4
  %a_buf_3_addr_3 = getelementptr [64 x float]* %a_buf_3, i64 0, i64 %tmp_12
  %a_buf_3_load_2 = load float* %a_buf_3_addr_3, align 8
  %a_buf_3_addr_4 = getelementptr [64 x float]* %a_buf_3, i64 0, i64 %tmp_14
  %a_buf_3_load_3 = load float* %a_buf_3_addr_4, align 4
  %tmp_2 = call i32 (...)* @_ssdm_op_SpecRegionBegin([12 x i8]* @p_str2) nounwind
  call void (...)* @_ssdm_op_SpecPipeline(i32 1, i32 1, i32 1, i32 0, [1 x i8]* @p_str) nounwind
  %tmp_4_trn_cast1 = zext i5 %index_b_0_i_mid2 to i7
  %tmp_4_trn_cast = zext i5 %index_b_0_i_mid2 to i6
  %tmp_15 = zext i5 %index_b_0_i_mid2 to i64
  %b_buf_0_addr_1 = getelementptr [64 x float]* %b_buf_0, i64 0, i64 %tmp_15
  %b_buf_0_load = load float* %b_buf_0_addr_1, align 4
  %product_term = fmul float %a_buf_0_load, %b_buf_0_load
  %result = fadd float %product_term, 0.000000e+00
  %p_addr5 = add i6 %tmp_4_trn_cast, 16
  %tmp_16 = zext i6 %p_addr5 to i64
  %b_buf_0_addr_2 = getelementptr [64 x float]* %b_buf_0, i64 0, i64 %tmp_16
  %b_buf_0_load_1 = load float* %b_buf_0_addr_2, align 4
  %product_term_1 = fmul float %a_buf_0_load_1, %b_buf_0_load_1
  %result_1 = fadd float %result, %product_term_1
  %p_addr6 = call i32 @_ssdm_op_BitConcatenate.i32.i27.i5(i27 1, i5 %index_b_0_i_mid2)
  %tmp_17 = zext i32 %p_addr6 to i64
  %b_buf_0_addr_3 = getelementptr [64 x float]* %b_buf_0, i64 0, i64 %tmp_17
  %b_buf_0_load_2 = load float* %b_buf_0_addr_3, align 4
  %product_term_2 = fmul float %a_buf_0_load_2, %b_buf_0_load_2
  %result_2 = fadd float %result_1, %product_term_2
  %p_addr7 = add i7 %tmp_4_trn_cast1, 48
  %tmp_18 = zext i7 %p_addr7 to i64
  %b_buf_0_addr_4 = getelementptr [64 x float]* %b_buf_0, i64 0, i64 %tmp_18
  %b_buf_0_load_3 = load float* %b_buf_0_addr_4, align 4
  %product_term_3 = fmul float %a_buf_0_load_3, %b_buf_0_load_3
  %result_3 = fadd float %result_2, %product_term_3
  %b_buf_1_addr_1 = getelementptr [64 x float]* %b_buf_1, i64 0, i64 %tmp_15
  %b_buf_1_load = load float* %b_buf_1_addr_1, align 4
  %product_term_4 = fmul float %a_buf_1_load, %b_buf_1_load
  %result_4 = fadd float %result_3, %product_term_4
  %b_buf_1_addr_2 = getelementptr [64 x float]* %b_buf_1, i64 0, i64 %tmp_16
  %b_buf_1_load_1 = load float* %b_buf_1_addr_2, align 4
  %product_term_5 = fmul float %a_buf_1_load_1, %b_buf_1_load_1
  %result_5 = fadd float %result_4, %product_term_5
  %b_buf_1_addr_3 = getelementptr [64 x float]* %b_buf_1, i64 0, i64 %tmp_17
  %b_buf_1_load_2 = load float* %b_buf_1_addr_3, align 4
  %product_term_6 = fmul float %a_buf_1_load_2, %b_buf_1_load_2
  %result_6 = fadd float %result_5, %product_term_6
  %b_buf_1_addr_4 = getelementptr [64 x float]* %b_buf_1, i64 0, i64 %tmp_18
  %b_buf_1_load_3 = load float* %b_buf_1_addr_4, align 4
  %product_term_7 = fmul float %a_buf_1_load_3, %b_buf_1_load_3
  %result_7 = fadd float %result_6, %product_term_7
  %b_buf_2_addr_1 = getelementptr [64 x float]* %b_buf_2, i64 0, i64 %tmp_15
  %b_buf_2_load = load float* %b_buf_2_addr_1, align 4
  %product_term_8 = fmul float %a_buf_2_load, %b_buf_2_load
  %result_8 = fadd float %result_7, %product_term_8
  %b_buf_2_addr_2 = getelementptr [64 x float]* %b_buf_2, i64 0, i64 %tmp_16
  %b_buf_2_load_1 = load float* %b_buf_2_addr_2, align 4
  %product_term_9 = fmul float %a_buf_2_load_1, %b_buf_2_load_1
  %result_9 = fadd float %result_8, %product_term_9
  %b_buf_2_addr_3 = getelementptr [64 x float]* %b_buf_2, i64 0, i64 %tmp_17
  %b_buf_2_load_2 = load float* %b_buf_2_addr_3, align 4
  %product_term_s = fmul float %a_buf_2_load_2, %b_buf_2_load_2
  %result_s = fadd float %result_9, %product_term_s
  %b_buf_2_addr_4 = getelementptr [64 x float]* %b_buf_2, i64 0, i64 %tmp_18
  %b_buf_2_load_3 = load float* %b_buf_2_addr_4, align 4
  %product_term_10 = fmul float %a_buf_2_load_3, %b_buf_2_load_3
  %result_10 = fadd float %result_s, %product_term_10
  %b_buf_3_addr_1 = getelementptr [64 x float]* %b_buf_3, i64 0, i64 %tmp_15
  %b_buf_3_load = load float* %b_buf_3_addr_1, align 4
  %product_term_11 = fmul float %a_buf_3_load, %b_buf_3_load
  %result_11 = fadd float %result_10, %product_term_11
  %b_buf_3_addr_2 = getelementptr [64 x float]* %b_buf_3, i64 0, i64 %tmp_16
  %b_buf_3_load_1 = load float* %b_buf_3_addr_2, align 4
  %product_term_12 = fmul float %a_buf_3_load_1, %b_buf_3_load_1
  %result_12 = fadd float %result_11, %product_term_12
  %b_buf_3_addr_3 = getelementptr [64 x float]* %b_buf_3, i64 0, i64 %tmp_17
  %b_buf_3_load_2 = load float* %b_buf_3_addr_3, align 4
  %product_term_13 = fmul float %a_buf_3_load_2, %b_buf_3_load_2
  %result_13 = fadd float %result_12, %product_term_13
  %b_buf_3_addr_4 = getelementptr [64 x float]* %b_buf_3, i64 0, i64 %tmp_18
  %b_buf_3_load_3 = load float* %b_buf_3_addr_4, align 4
  %product_term_14 = fmul float %a_buf_3_load_3, %b_buf_3_load_3
  %result_14 = fadd float %result_13, %product_term_14
  call void @_ssdm_op_Write.ap_fifo.volatile.floatP(float* %out_C, float %result_14)
  %empty_10 = call i32 (...)* @_ssdm_op_SpecRegionEnd([12 x i8]* @p_str2, i32 %tmp_2) nounwind
  %index_b = add i5 %index_b_0_i_mid2, 1
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

branch4:                                          ; preds = %.preheader4
  store float %in_B_read, float* %b_buf_0_addr, align 4
  br label %2

branch5:                                          ; preds = %.preheader4
  store float %in_B_read, float* %b_buf_1_addr, align 4
  br label %2

branch6:                                          ; preds = %.preheader4
  store float %in_B_read, float* %b_buf_2_addr, align 4
  br label %2

branch7:                                          ; preds = %.preheader4
  store float %in_B_read, float* %b_buf_3_addr, align 4
  br label %2
}

define weak i3 @_ssdm_op_PartSelect.i3.i5.i32.i32(i5, i32, i32) nounwind readnone {
entry:
  %empty = call i5 @llvm.part.select.i5(i5 %0, i32 %1, i32 %2)
  %empty_11 = trunc i5 %empty to i3
  ret i3 %empty_11
}

define weak i7 @_ssdm_op_BitConcatenate.i7.i5.i2(i5, i2) nounwind readnone {
entry:
  %empty = zext i5 %0 to i7
  %empty_12 = zext i2 %1 to i7
  %empty_13 = shl i7 %empty, 2
  %empty_14 = or i7 %empty_13, %empty_12
  ret i7 %empty_14
}

define weak i6 @_ssdm_op_BitConcatenate.i6.i2.i4(i2, i4) nounwind readnone {
entry:
  %empty = zext i2 %0 to i6
  %empty_15 = zext i4 %1 to i6
  %empty_16 = shl i6 %empty, 4
  %empty_17 = or i6 %empty_16, %empty_15
  ret i6 %empty_17
}

define weak i32 @_ssdm_op_BitConcatenate.i32.i27.i5(i27, i5) nounwind readnone {
entry:
  %empty = zext i27 %0 to i32
  %empty_18 = zext i5 %1 to i32
  %empty_19 = shl i32 %empty, 5
  %empty_20 = or i32 %empty_19, %empty_18
  ret i32 %empty_20
}

define weak i32 @_ssdm_op_BitConcatenate.i32.i25.i7(i25, i7) nounwind readnone {
entry:
  %empty = zext i25 %0 to i32
  %empty_21 = zext i7 %1 to i32
  %empty_22 = shl i32 %empty, 7
  %empty_23 = or i32 %empty_22, %empty_21
  ret i32 %empty_23
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

declare i5 @llvm.part.select.i5(i5, i32, i32) nounwind readnone

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
